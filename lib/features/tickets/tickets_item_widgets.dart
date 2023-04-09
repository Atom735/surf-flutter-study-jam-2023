/// {@category Feature: Tickets}
/// {@category Widgets}
library tickets_item.widgets;

import 'package:flutter/material.dart';

import 'tickets_item_bloc.dart';

class TicketListTileWidget extends StatelessWidget {
  const TicketListTileWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final TicketsItemBloc data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Center(
        widthFactor: 1,
        child: Icon(
          Icons.question_mark,
        ),
      ),
      title: Text(data.state.id.value),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearProgressIndicator(),
          Text('Ожидает начала загрузки на устройство'),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.question_mark,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cloud,
            ),
          ),
        ],
      ),
    );
  }
}
