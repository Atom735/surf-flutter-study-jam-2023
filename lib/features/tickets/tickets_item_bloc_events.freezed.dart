// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of tickets_item.events;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsItemBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri source) addNewFromUrl,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri source)? addNewFromUrl,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri source)? addNewFromUrl,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsItemBlocEventAddNewFromUrl value)
        addNewFromUrl,
    required TResult Function(TicketsItemBlocEventRefresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsItemBlocEventAddNewFromUrl value)? addNewFromUrl,
    TResult? Function(TicketsItemBlocEventRefresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsItemBlocEventAddNewFromUrl value)? addNewFromUrl,
    TResult Function(TicketsItemBlocEventRefresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsItemBlocEventCopyWith<$Res> {
  factory $TicketsItemBlocEventCopyWith(TicketsItemBlocEvent value,
          $Res Function(TicketsItemBlocEvent) then) =
      _$TicketsItemBlocEventCopyWithImpl<$Res, TicketsItemBlocEvent>;
}

/// @nodoc
class _$TicketsItemBlocEventCopyWithImpl<$Res,
        $Val extends TicketsItemBlocEvent>
    implements $TicketsItemBlocEventCopyWith<$Res> {
  _$TicketsItemBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketsItemBlocEventAddNewFromUrlCopyWith<$Res> {
  factory _$$TicketsItemBlocEventAddNewFromUrlCopyWith(
          _$TicketsItemBlocEventAddNewFromUrl value,
          $Res Function(_$TicketsItemBlocEventAddNewFromUrl) then) =
      __$$TicketsItemBlocEventAddNewFromUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri source});
}

/// @nodoc
class __$$TicketsItemBlocEventAddNewFromUrlCopyWithImpl<$Res>
    extends _$TicketsItemBlocEventCopyWithImpl<$Res,
        _$TicketsItemBlocEventAddNewFromUrl>
    implements _$$TicketsItemBlocEventAddNewFromUrlCopyWith<$Res> {
  __$$TicketsItemBlocEventAddNewFromUrlCopyWithImpl(
      _$TicketsItemBlocEventAddNewFromUrl _value,
      $Res Function(_$TicketsItemBlocEventAddNewFromUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$TicketsItemBlocEventAddNewFromUrl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$TicketsItemBlocEventAddNewFromUrl
    implements TicketsItemBlocEventAddNewFromUrl {
  const _$TicketsItemBlocEventAddNewFromUrl({required this.source});

  /// Ссылка на скачивание билета.
  @override
  final Uri source;

  @override
  String toString() {
    return 'TicketsItemBlocEvent.addNewFromUrl(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsItemBlocEventAddNewFromUrl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsItemBlocEventAddNewFromUrlCopyWith<
          _$TicketsItemBlocEventAddNewFromUrl>
      get copyWith => __$$TicketsItemBlocEventAddNewFromUrlCopyWithImpl<
          _$TicketsItemBlocEventAddNewFromUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri source) addNewFromUrl,
    required TResult Function() refresh,
  }) {
    return addNewFromUrl(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri source)? addNewFromUrl,
    TResult? Function()? refresh,
  }) {
    return addNewFromUrl?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri source)? addNewFromUrl,
    TResult Function()? refresh,
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
    required TResult Function(TicketsItemBlocEventAddNewFromUrl value)
        addNewFromUrl,
    required TResult Function(TicketsItemBlocEventRefresh value) refresh,
  }) {
    return addNewFromUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsItemBlocEventAddNewFromUrl value)? addNewFromUrl,
    TResult? Function(TicketsItemBlocEventRefresh value)? refresh,
  }) {
    return addNewFromUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsItemBlocEventAddNewFromUrl value)? addNewFromUrl,
    TResult Function(TicketsItemBlocEventRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (addNewFromUrl != null) {
      return addNewFromUrl(this);
    }
    return orElse();
  }
}

abstract class TicketsItemBlocEventAddNewFromUrl
    implements TicketsItemBlocEvent {
  const factory TicketsItemBlocEventAddNewFromUrl({required final Uri source}) =
      _$TicketsItemBlocEventAddNewFromUrl;

  /// Ссылка на скачивание билета.
  Uri get source;
  @JsonKey(ignore: true)
  _$$TicketsItemBlocEventAddNewFromUrlCopyWith<
          _$TicketsItemBlocEventAddNewFromUrl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketsItemBlocEventRefreshCopyWith<$Res> {
  factory _$$TicketsItemBlocEventRefreshCopyWith(
          _$TicketsItemBlocEventRefresh value,
          $Res Function(_$TicketsItemBlocEventRefresh) then) =
      __$$TicketsItemBlocEventRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsItemBlocEventRefreshCopyWithImpl<$Res>
    extends _$TicketsItemBlocEventCopyWithImpl<$Res,
        _$TicketsItemBlocEventRefresh>
    implements _$$TicketsItemBlocEventRefreshCopyWith<$Res> {
  __$$TicketsItemBlocEventRefreshCopyWithImpl(
      _$TicketsItemBlocEventRefresh _value,
      $Res Function(_$TicketsItemBlocEventRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsItemBlocEventRefresh implements TicketsItemBlocEventRefresh {
  const _$TicketsItemBlocEventRefresh();

  @override
  String toString() {
    return 'TicketsItemBlocEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsItemBlocEventRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri source) addNewFromUrl,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri source)? addNewFromUrl,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri source)? addNewFromUrl,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsItemBlocEventAddNewFromUrl value)
        addNewFromUrl,
    required TResult Function(TicketsItemBlocEventRefresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsItemBlocEventAddNewFromUrl value)? addNewFromUrl,
    TResult? Function(TicketsItemBlocEventRefresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsItemBlocEventAddNewFromUrl value)? addNewFromUrl,
    TResult Function(TicketsItemBlocEventRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class TicketsItemBlocEventRefresh implements TicketsItemBlocEvent {
  const factory TicketsItemBlocEventRefresh() = _$TicketsItemBlocEventRefresh;
}
