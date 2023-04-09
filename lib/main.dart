// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bottom_sheet/bottom_sheet_widgets.dart';
import 'core/core_widgets.dart';
import 'features/tickets/tickets_list_bloc.dart';
import 'features/tickets/tickets_list_bloc_states.dart';
import 'features/tickets/tickets_list_widgets.dart';

void main() {
  runApp(const MyApp());
}

/// Рут виджет всего приложения.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'RootNavigator');

  late Map<Type, Action<Intent>> actions = actionsBuilder();

  Map<Type, Action<Intent>> actionsBuilder() {
    return {
      ...WidgetsApp.defaultActions,
      AddTicketDialogOpenIntent: AddTicketDialogOpenAction(navigatorKey),
    };
  }

  late var _ticketsListBloc = TicketsListBloc();

  @override
  void reassemble() {
    super.reassemble();
    assert(() {
      actions = actionsBuilder();
      _ticketsListBloc = TicketsListBloc();
      return true;
    }());
  }

  @override
  void dispose() {
    super.dispose();
    unawaited(_ticketsListBloc.close());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Async Toure Ticket Storage',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: MyTicketStorageScreenWidget(ticketsListBloc: _ticketsListBloc),
      actions: actions,
    );
  }
}

/// Намерение открыть диалог добавления билета.
///
/// См также:
/// - [AddTicketDialogOpenAction] - Обработчик этого намерения.
///
/// {@category Intents}
class AddTicketDialogOpenIntent extends Intent {
  const AddTicketDialogOpenIntent();
}

/// Действие при намерение открыть диалог добавления билета.
///
/// См также:
/// - [AddTicketDialogOpenIntent] - Данные намерения.
///
/// {@category Actions}
class AddTicketDialogOpenAction extends Action<AddTicketDialogOpenIntent> {
  final GlobalKey<NavigatorState> navigatorKey;

  AddTicketDialogOpenAction(this.navigatorKey);

  @override
  Object? invoke(AddTicketDialogOpenIntent intent) async {
    // showModalBottomSheet(context: context, builder: builder)
    await navigatorKey.currentState!.push(
      MyModalBottomSheetPage(
        builder: (context) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Hint Text',
                    errorText: 'Error Text',
                    border: OutlineInputBorder(),
                  ),
                ),
                Center(
                  child: FilledButton(
                    onPressed: () {},
                    child: Text('Добавить'),
                  ),
                ),
              ],
            ),
          );
        },
      ).createRoute(navigatorKey.currentContext!),
    );
    return null;
  }
}

class MyTicketStorageScreenWidget extends StatelessWidget {
  const MyTicketStorageScreenWidget({
    Key? key,
    required this.ticketsListBloc,
  }) : super(key: key);

  final TicketsListBloc ticketsListBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ticketsListBloc,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed:
              Actions.handler(context, const AddTicketDialogOpenIntent()),
          label: Text(
            'Добавить',
          ),
        ),
        body: CustomScrollView(
          slivers: [
            BlocBuilder(
              bloc: ticketsListBloc,
              builder: (context, TicketsListBlocState state) {
                PreferredSizeWidget? bottom;
                if (state.isPending) {
                  bottom = const PreferredSize(
                    preferredSize: Size.fromHeight(4),
                    child: LinearProgressIndicator(),
                  );
                }
                return SliverAppBar(
                  title: Text('Хранение билетов'),
                  bottom: bottom,
                );
              },
            ),
            TicketListContentWidget(
              listType: CoreWidgetListType.sliver,
            ),
          ],
        ),
      ),
    );
  }
}
