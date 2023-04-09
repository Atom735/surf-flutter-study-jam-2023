/// {@category Feature: Tickets}
/// {@category Models}
library tickets.models;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_models.freezed.dart';

/// Состояния блока для списка билетов.
@freezed
class TicketsModel with _$TicketsModel {
  /// Неизвестная модель данных билета.
  factory TicketsModel.unknown() = TicketsModelUnknown;
}
