/// {@category Feature: Tickets}
/// {@category BlocStates}
library tickets_list.states;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tickets_models.dart';

part 'tickets_list_bloc_states.freezed.dart';

/// Состояния блока для списка билетов.
@freezed
class TicketsListBlocState with _$TicketsListBlocState {
  const factory TicketsListBlocState({
    /// Ожидание загрузки списка.
    required bool isPending,

    /// Список билетов.
    required List<TicketsModel> items,
  }) = _TicketsListBlocState;
}
