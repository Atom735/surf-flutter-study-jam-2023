// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of tickets_item.states;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsItemBlocState {
  /// Айди билета.
  TicketId get id => throw _privateConstructorUsedError;

  /// Размер файла в байтах.
  int? get size => throw _privateConstructorUsedError;

  /// Название билета.
  String? get name => throw _privateConstructorUsedError;

  /// Ссылка откуда происходит загрузка.
  Uri? get loadingFrom => throw _privateConstructorUsedError;

  /// Кол-во загруженных байт.
  int? get loadedBytes => throw _privateConstructorUsedError;

  /// Сообщение об ошибке во время загрузки.
  String? get loadingErrorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsItemBlocStateCopyWith<TicketsItemBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsItemBlocStateCopyWith<$Res> {
  factory $TicketsItemBlocStateCopyWith(TicketsItemBlocState value,
          $Res Function(TicketsItemBlocState) then) =
      _$TicketsItemBlocStateCopyWithImpl<$Res, TicketsItemBlocState>;
  @useResult
  $Res call(
      {TicketId id,
      int? size,
      String? name,
      Uri? loadingFrom,
      int? loadedBytes,
      String? loadingErrorMessage});

  $TicketIdCopyWith<$Res> get id;
}

/// @nodoc
class _$TicketsItemBlocStateCopyWithImpl<$Res,
        $Val extends TicketsItemBlocState>
    implements $TicketsItemBlocStateCopyWith<$Res> {
  _$TicketsItemBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = freezed,
    Object? name = freezed,
    Object? loadingFrom = freezed,
    Object? loadedBytes = freezed,
    Object? loadingErrorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TicketId,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingFrom: freezed == loadingFrom
          ? _value.loadingFrom
          : loadingFrom // ignore: cast_nullable_to_non_nullable
              as Uri?,
      loadedBytes: freezed == loadedBytes
          ? _value.loadedBytes
          : loadedBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      loadingErrorMessage: freezed == loadingErrorMessage
          ? _value.loadingErrorMessage
          : loadingErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketIdCopyWith<$Res> get id {
    return $TicketIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TicketsItemBlocStateCopyWith<$Res>
    implements $TicketsItemBlocStateCopyWith<$Res> {
  factory _$$_TicketsItemBlocStateCopyWith(_$_TicketsItemBlocState value,
          $Res Function(_$_TicketsItemBlocState) then) =
      __$$_TicketsItemBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TicketId id,
      int? size,
      String? name,
      Uri? loadingFrom,
      int? loadedBytes,
      String? loadingErrorMessage});

  @override
  $TicketIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_TicketsItemBlocStateCopyWithImpl<$Res>
    extends _$TicketsItemBlocStateCopyWithImpl<$Res, _$_TicketsItemBlocState>
    implements _$$_TicketsItemBlocStateCopyWith<$Res> {
  __$$_TicketsItemBlocStateCopyWithImpl(_$_TicketsItemBlocState _value,
      $Res Function(_$_TicketsItemBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = freezed,
    Object? name = freezed,
    Object? loadingFrom = freezed,
    Object? loadedBytes = freezed,
    Object? loadingErrorMessage = freezed,
  }) {
    return _then(_$_TicketsItemBlocState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TicketId,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingFrom: freezed == loadingFrom
          ? _value.loadingFrom
          : loadingFrom // ignore: cast_nullable_to_non_nullable
              as Uri?,
      loadedBytes: freezed == loadedBytes
          ? _value.loadedBytes
          : loadedBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      loadingErrorMessage: freezed == loadingErrorMessage
          ? _value.loadingErrorMessage
          : loadingErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TicketsItemBlocState implements _TicketsItemBlocState {
  const _$_TicketsItemBlocState(
      {required this.id,
      this.size,
      this.name,
      this.loadingFrom,
      this.loadedBytes,
      this.loadingErrorMessage});

  /// Айди билета.
  @override
  final TicketId id;

  /// Размер файла в байтах.
  @override
  final int? size;

  /// Название билета.
  @override
  final String? name;

  /// Ссылка откуда происходит загрузка.
  @override
  final Uri? loadingFrom;

  /// Кол-во загруженных байт.
  @override
  final int? loadedBytes;

  /// Сообщение об ошибке во время загрузки.
  @override
  final String? loadingErrorMessage;

  @override
  String toString() {
    return 'TicketsItemBlocState(id: $id, size: $size, name: $name, loadingFrom: $loadingFrom, loadedBytes: $loadedBytes, loadingErrorMessage: $loadingErrorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsItemBlocState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.loadingFrom, loadingFrom) ||
                other.loadingFrom == loadingFrom) &&
            (identical(other.loadedBytes, loadedBytes) ||
                other.loadedBytes == loadedBytes) &&
            (identical(other.loadingErrorMessage, loadingErrorMessage) ||
                other.loadingErrorMessage == loadingErrorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, size, name, loadingFrom,
      loadedBytes, loadingErrorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsItemBlocStateCopyWith<_$_TicketsItemBlocState> get copyWith =>
      __$$_TicketsItemBlocStateCopyWithImpl<_$_TicketsItemBlocState>(
          this, _$identity);
}

abstract class _TicketsItemBlocState implements TicketsItemBlocState {
  const factory _TicketsItemBlocState(
      {required final TicketId id,
      final int? size,
      final String? name,
      final Uri? loadingFrom,
      final int? loadedBytes,
      final String? loadingErrorMessage}) = _$_TicketsItemBlocState;

  @override

  /// Айди билета.
  TicketId get id;
  @override

  /// Размер файла в байтах.
  int? get size;
  @override

  /// Название билета.
  String? get name;
  @override

  /// Ссылка откуда происходит загрузка.
  Uri? get loadingFrom;
  @override

  /// Кол-во загруженных байт.
  int? get loadedBytes;
  @override

  /// Сообщение об ошибке во время загрузки.
  String? get loadingErrorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsItemBlocStateCopyWith<_$_TicketsItemBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
