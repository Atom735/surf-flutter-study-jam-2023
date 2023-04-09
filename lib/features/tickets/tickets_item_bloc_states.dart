/// {@category Feature: Tickets}
/// {@category BlocStates}
library tickets_item.states;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tickets_models.dart';

part 'tickets_item_bloc_states.freezed.dart';

/// Состояния блока для списка билетов.
@freezed
class TicketsItemBlocState with _$TicketsItemBlocState {
  const factory TicketsItemBlocState({
    /// Айди билета.
    required TicketId id,

    /// Размер файла в байтах.
    int? size,

    /// Название билета.
    String? name,

    /// Ссылка откуда происходит загрузка.
    Uri? loadingFrom,

    /// Кол-во загруженных байт.
    int? loadedBytes,

    /// Сообщение об ошибке во время загрузки.
    String? loadingErrorMessage,
  }) = _TicketsItemBlocState;
}
