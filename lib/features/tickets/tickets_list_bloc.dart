/// {@category Feature: Tickets}
/// {@category Bloc}
library tickets_list.bloc;

import 'package:bloc/bloc.dart';

import 'tickets_list_bloc_events.dart';
import 'tickets_list_bloc_states.dart';

class TickersListBloc extends Bloc<TicketsListBlocEvent, TicketsListBlocState> {
  TickersListBloc()
      : super(
          const TicketsListBlocState(
            isPending: false,
            items: [],
          ),
        );
}
