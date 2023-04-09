import 'dart:ffi';

import 'package:flutter/material.dart';

import 'features/ticket_storage/ticket_storage_page.dart';

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
    );
  }
}

/// Намерение открыть диалог добавления билета.
///
/// {@category Intents}
class AddTicketDialogOpenIntent extends Intent {
  const AddTicketDialogOpenIntent();
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
