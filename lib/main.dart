import 'package:flutter/material.dart';

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

  late final actions = {
    ...WidgetsApp.defaultActions,
    AddTicketDialogOpenIntent: AddTicketDialogOpenAction(navigatorKey),
  };

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
    // navigatorKey.currentState?.push(route);
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
