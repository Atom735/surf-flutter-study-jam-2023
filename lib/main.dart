import 'package:flutter/material.dart';

import 'core/bottom_sheet/bottom_sheet_widgets.dart';

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

  @override
  void reassemble() {
    super.reassemble();
    assert(() {
      actions = actionsBuilder();
      return true;
    }());
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
      home: const MyTicketStorageScreenWidget(),
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
  const MyTicketStorageScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: Actions.handler(context, const AddTicketDialogOpenIntent()),
        label: Text(
          'Добавить',
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Хранение билетов'),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Здесь пока ничего нет'),
            ),
          ),
        ],
      ),
    );
  }
}
