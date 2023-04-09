/// {@category Feature: Tickets}
/// {@category Widgets}
library tickets.widgets;

import 'package:flutter/material.dart';

import 'tickets_models.dart';

class TicketListTileWidget extends StatelessWidget {
  const TicketListTileWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final TicketsModel data;

  @override
  Widget build(BuildContext context) {
    return const ListTile();
  }
}
