/// {@category Feature: Tickets}
/// {@category BlocEvents}
library tickets_list.events;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_list_bloc_events.freezed.dart';

/// События блока для списка билетов.
@freezed
class TicketsListBlocEvent with _$TicketsListBlocEvent {
  /// Добавление нового тикета через [Uri].
  const factory TicketsListBlocEvent.addNewFromUrl({
    /// Ссылка на скачивание билета.
    required Uri source,
  }) = TicketsListBlocEventAddNewFromUrl;

  /// Обновление списка билетов.
  const factory TicketsListBlocEvent.refresh() = TicketsListBlocEventRefresh;
}
