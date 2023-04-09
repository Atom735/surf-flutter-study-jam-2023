// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of tickets.models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketIdCopyWith<TicketId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketIdCopyWith<$Res> {
  factory $TicketIdCopyWith(TicketId value, $Res Function(TicketId) then) =
      _$TicketIdCopyWithImpl<$Res, TicketId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TicketIdCopyWithImpl<$Res, $Val extends TicketId>
    implements $TicketIdCopyWith<$Res> {
  _$TicketIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketIdCopyWith<$Res> implements $TicketIdCopyWith<$Res> {
  factory _$$_TicketIdCopyWith(
          _$_TicketId value, $Res Function(_$_TicketId) then) =
      __$$_TicketIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_TicketIdCopyWithImpl<$Res>
    extends _$TicketIdCopyWithImpl<$Res, _$_TicketId>
    implements _$$_TicketIdCopyWith<$Res> {
  __$$_TicketIdCopyWithImpl(
      _$_TicketId _value, $Res Function(_$_TicketId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_TicketId(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TicketId implements _TicketId {
  _$_TicketId(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TicketId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketIdCopyWith<_$_TicketId> get copyWith =>
      __$$_TicketIdCopyWithImpl<_$_TicketId>(this, _$identity);
}

abstract class _TicketId implements TicketId {
  factory _TicketId(final String value) = _$_TicketId;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TicketIdCopyWith<_$_TicketId> get copyWith =>
      throw _privateConstructorUsedError;
}
