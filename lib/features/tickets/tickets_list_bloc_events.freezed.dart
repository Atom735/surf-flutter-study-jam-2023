// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of tickets_list.events;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsListBlocEvent {
  /// Ссылка на скачивание билета.
  Uri get source => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri source) addNewFromUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri source)? addNewFromUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri source)? addNewFromUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListBlocEventAddNewFromUrl value)
        addNewFromUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListBlocEventAddNewFromUrl value)? addNewFromUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListBlocEventAddNewFromUrl value)? addNewFromUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsListBlocEventCopyWith<TicketsListBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsListBlocEventCopyWith<$Res> {
  factory $TicketsListBlocEventCopyWith(TicketsListBlocEvent value,
          $Res Function(TicketsListBlocEvent) then) =
      _$TicketsListBlocEventCopyWithImpl<$Res, TicketsListBlocEvent>;
  @useResult
  $Res call({Uri source});
}

/// @nodoc
class _$TicketsListBlocEventCopyWithImpl<$Res,
        $Val extends TicketsListBlocEvent>
    implements $TicketsListBlocEventCopyWith<$Res> {
  _$TicketsListBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketsListBlocEventAddNewFromUrlCopyWith<$Res>
    implements $TicketsListBlocEventCopyWith<$Res> {
  factory _$$TicketsListBlocEventAddNewFromUrlCopyWith(
          _$TicketsListBlocEventAddNewFromUrl value,
          $Res Function(_$TicketsListBlocEventAddNewFromUrl) then) =
      __$$TicketsListBlocEventAddNewFromUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri source});
}

/// @nodoc
class __$$TicketsListBlocEventAddNewFromUrlCopyWithImpl<$Res>
    extends _$TicketsListBlocEventCopyWithImpl<$Res,
        _$TicketsListBlocEventAddNewFromUrl>
    implements _$$TicketsListBlocEventAddNewFromUrlCopyWith<$Res> {
  __$$TicketsListBlocEventAddNewFromUrlCopyWithImpl(
      _$TicketsListBlocEventAddNewFromUrl _value,
      $Res Function(_$TicketsListBlocEventAddNewFromUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$TicketsListBlocEventAddNewFromUrl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$TicketsListBlocEventAddNewFromUrl
    implements TicketsListBlocEventAddNewFromUrl {
  const _$TicketsListBlocEventAddNewFromUrl({required this.source});

  /// Ссылка на скачивание билета.
  @override
  final Uri source;

  @override
  String toString() {
    return 'TicketsListBlocEvent.addNewFromUrl(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsListBlocEventAddNewFromUrl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsListBlocEventAddNewFromUrlCopyWith<
          _$TicketsListBlocEventAddNewFromUrl>
      get copyWith => __$$TicketsListBlocEventAddNewFromUrlCopyWithImpl<
          _$TicketsListBlocEventAddNewFromUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri source) addNewFromUrl,
  }) {
    return addNewFromUrl(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri source)? addNewFromUrl,
  }) {
    return addNewFromUrl?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri source)? addNewFromUrl,
    required TResult orElse(),
  }) {
    if (addNewFromUrl != null) {
      return addNewFromUrl(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListBlocEventAddNewFromUrl value)
        addNewFromUrl,
  }) {
    return addNewFromUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListBlocEventAddNewFromUrl value)? addNewFromUrl,
  }) {
    return addNewFromUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListBlocEventAddNewFromUrl value)? addNewFromUrl,
    required TResult orElse(),
  }) {
    if (addNewFromUrl != null) {
      return addNewFromUrl(this);
    }
    return orElse();
  }
}

abstract class TicketsListBlocEventAddNewFromUrl
    implements TicketsListBlocEvent {
  const factory TicketsListBlocEventAddNewFromUrl({required final Uri source}) =
      _$TicketsListBlocEventAddNewFromUrl;

  @override

  /// Ссылка на скачивание билета.
  Uri get source;
  @override
  @JsonKey(ignore: true)
  _$$TicketsListBlocEventAddNewFromUrlCopyWith<
          _$TicketsListBlocEventAddNewFromUrl>
      get copyWith => throw _privateConstructorUsedError;
}
