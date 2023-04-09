/// {@category Feature: Tickets}
/// {@category Bloc}
library tickets_list.bloc;

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:uuid/uuid.dart';

import 'tickets_item_bloc.dart';
import 'tickets_list_bloc_events.dart';
import 'tickets_list_bloc_states.dart';
import 'tickets_models.dart';

class TicketsListBloc extends Bloc<TicketsListBlocEvent, TicketsListBlocState> {
  TicketsListBloc()
      : super(
          const TicketsListBlocState(
            isPending: false,
            items: [],
          ),
        ) {
    on<TicketsListBlocEvent>(onAll);
  }
  FutureOr onAll(
    TicketsListBlocEvent event,
    Emitter<TicketsListBlocState> emit,
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
    final event = Zone.current[#event] as TicketsListBlocEvent;
    return event.map(
      addNewFromUrl: onAddNewFromUrl,
      refresh: onRefresh,
    );
  }

  FutureOr onAddNewFromUrl(TicketsListBlocEventAddNewFromUrl event) async {
    final emit = Zone.current[#emit] as Emitter<TicketsListBlocState>;
    emit(
      state.copyWith(
        isPending: true,
        errorMessage: null,
      ),
    );

    await Future.delayed(const Duration(seconds: 1));

    emit(
      state.copyWith(
        isPending: false,
        errorMessage: null,
        items: [
          ...state.items,
          TicketsItemBloc(
            TicketId(
              const Uuid().v5(
                Uuid.NAMESPACE_URL,
                'tickets.async-tour.xyz',
              ),
            ),
          ),
        ],
      ),
    );
  }

  FutureOr onRefresh(TicketsListBlocEventRefresh event) async {
    final emit = Zone.current[#emit] as Emitter<TicketsListBlocState>;

    emit(
      state.copyWith(
        isPending: true,
        errorMessage: null,
      ),
    );

    await Future.delayed(const Duration(seconds: 1));

    emit(
      state.copyWith(
        isPending: false,
        errorMessage: null,
        items: [
          TicketsItemBloc(
            TicketId(
              const Uuid().v5(
                Uuid.NAMESPACE_URL,
                'tickets.async-tour.xyz',
              ),
            ),
          ),
          TicketsItemBloc(
            TicketId(
              const Uuid().v5(
                Uuid.NAMESPACE_URL,
                'tickets.async-tour.xyz',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
