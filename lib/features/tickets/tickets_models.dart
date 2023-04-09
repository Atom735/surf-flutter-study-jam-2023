/// {@category Feature: Tickets}
/// {@category Models}
library tickets.models;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_models.freezed.dart';

/// Айди билета.
@freezed
class TicketId with _$TicketId {
  /// Айди билета.
  factory TicketId(String value) = _TicketId;
}
