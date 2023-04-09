/// {@category Feature: Tickets}
/// {@category Bloc}
library tickets_item.bloc;

import 'dart:async';

import 'package:bloc/bloc.dart';

import 'tickets_item_bloc_events.dart';
import 'tickets_item_bloc_states.dart';
import 'tickets_models.dart';

class TicketsItemBloc extends Bloc<TicketsItemBlocEvent, TicketsItemBlocState> {
  TicketsItemBloc(TicketId id)
      : super(
          TicketsItemBlocState(
            id: id,
          ),
        ) {
    on<TicketsItemBlocEvent>(onAll);
  }
  FutureOr onAll(
    TicketsItemBlocEvent event,
    Emitter<TicketsItemBlocState> emit,
  ) {
    return runZoned(
      onAllZoned,
      zoneValues: {
        #event: event,
        #emit: emit,
      },
    );
  }

  FutureOr onAllZoned() {
    final event = Zone.current[#event] as TicketsItemBlocEvent;
    return null;
  }
}
