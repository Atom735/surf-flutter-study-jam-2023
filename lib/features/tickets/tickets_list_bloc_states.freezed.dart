// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of tickets_list.states;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsListBlocState {
  /// Ожидание загрузки списка.
  bool get isPending => throw _privateConstructorUsedError;

  /// Список билетов.
  List<TicketsModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsListBlocStateCopyWith<TicketsListBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsListBlocStateCopyWith<$Res> {
  factory $TicketsListBlocStateCopyWith(TicketsListBlocState value,
          $Res Function(TicketsListBlocState) then) =
      _$TicketsListBlocStateCopyWithImpl<$Res, TicketsListBlocState>;
  @useResult
  $Res call({bool isPending, List<TicketsModel> items});
}

/// @nodoc
class _$TicketsListBlocStateCopyWithImpl<$Res,
        $Val extends TicketsListBlocState>
    implements $TicketsListBlocStateCopyWith<$Res> {
  _$TicketsListBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPending = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TicketsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketsListBlocStateCopyWith<$Res>
    implements $TicketsListBlocStateCopyWith<$Res> {
  factory _$$_TicketsListBlocStateCopyWith(_$_TicketsListBlocState value,
          $Res Function(_$_TicketsListBlocState) then) =
      __$$_TicketsListBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPending, List<TicketsModel> items});
}

/// @nodoc
class __$$_TicketsListBlocStateCopyWithImpl<$Res>
    extends _$TicketsListBlocStateCopyWithImpl<$Res, _$_TicketsListBlocState>
    implements _$$_TicketsListBlocStateCopyWith<$Res> {
  __$$_TicketsListBlocStateCopyWithImpl(_$_TicketsListBlocState _value,
      $Res Function(_$_TicketsListBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPending = null,
    Object? items = null,
  }) {
    return _then(_$_TicketsListBlocState(
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TicketsModel>,
    ));
  }
}

/// @nodoc

class _$_TicketsListBlocState implements _TicketsListBlocState {
  const _$_TicketsListBlocState(
      {required this.isPending, required final List<TicketsModel> items})
      : _items = items;

  /// Ожидание загрузки списка.
  @override
  final bool isPending;

  /// Список билетов.
  final List<TicketsModel> _items;

  /// Список билетов.
  @override
  List<TicketsModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TicketsListBlocState(isPending: $isPending, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsListBlocState &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isPending, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsListBlocStateCopyWith<_$_TicketsListBlocState> get copyWith =>
      __$$_TicketsListBlocStateCopyWithImpl<_$_TicketsListBlocState>(
          this, _$identity);
}

abstract class _TicketsListBlocState implements TicketsListBlocState {
  const factory _TicketsListBlocState(
      {required final bool isPending,
      required final List<TicketsModel> items}) = _$_TicketsListBlocState;

  @override

  /// Ожидание загрузки списка.
  bool get isPending;
  @override

  /// Список билетов.
  List<TicketsModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsListBlocStateCopyWith<_$_TicketsListBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
