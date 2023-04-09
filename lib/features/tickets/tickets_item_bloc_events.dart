/// {@category Feature: Tickets}
/// {@category BlocEvents}
library tickets_item.events;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_item_bloc_events.freezed.dart';

/// События блока для списка билетов.
@freezed
class TicketsItemBlocEvent with _$TicketsItemBlocEvent {
  /// Добавление нового тикета через [Uri].
  const factory TicketsItemBlocEvent.addNewFromUrl({
    /// Ссылка на скачивание билета.
    required Uri source,
  }) = TicketsItemBlocEventAddNewFromUrl;

  /// Обновление списка билетов.
  const factory TicketsItemBlocEvent.refresh() = TicketsItemBlocEventRefresh;
}
