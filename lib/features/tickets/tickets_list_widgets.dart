// ignore_for_file: public_member_api_docs, sort_constructors_first
/// {@category Feature: Tickets}
/// {@category Widgets}
library tickets_list.widgets;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/core_widgets.dart';
import 'tickets_item_widgets.dart';
import 'tickets_list_bloc.dart';
import 'tickets_list_bloc_events.dart';
import 'tickets_list_bloc_states.dart';

class TicketListContentWidget extends StatefulWidget {
  const TicketListContentWidget({
    Key? key,
    required this.listType,
    this.bloc,
  }) : super(key: key);

  final CoreWidgetListType listType;
  final TicketsListBloc? bloc;

  @override
  State<TicketListContentWidget> createState() =>
      _TicketListContentWidgetState();
}

class _TicketListContentWidgetState extends State<TicketListContentWidget> {
  @override
  void initState() {
    super.initState();
    final bloc = widget.bloc ?? context.read<TicketsListBloc>();
    bloc.add(const TicketsListBlocEvent.refresh());
  }

  @override
  void reassemble() {
    super.reassemble();
    final bloc = widget.bloc ?? context.read<TicketsListBloc>();
    bloc.add(const TicketsListBlocEvent.refresh());
  }

  Widget emptyBuilder(BuildContext context) {
    return const Center(
      key: ObjectKey(null),
      child: Text('Здесь пока ничего нет'),
    );
  }

  Widget blocBuilder(BuildContext context, TicketsListBlocState state) {
    final items = state.items;

    Widget itemBuilder(BuildContext context, int index) {
      final item = items[index];
      return TicketListTileWidget(
        key: ObjectKey(item.state.id),
        data: item,
      );
    }

    return CoreListWidget(
      itemBuilder: itemBuilder,
      emptyBuilder: emptyBuilder,
      itemCount: items.length,
      listType: widget.listType,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: widget.bloc ?? context.watch<TicketsListBloc>(),
      builder: blocBuilder,
    );
  }
}
