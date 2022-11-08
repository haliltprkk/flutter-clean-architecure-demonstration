// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterListState {
  List<CharacterModel> get characterList => throw _privateConstructorUsedError;
  StateType get stateType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterListStateCopyWith<CharacterListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListStateCopyWith<$Res> {
  factory $CharacterListStateCopyWith(
          CharacterListState value, $Res Function(CharacterListState) then) =
      _$CharacterListStateCopyWithImpl<$Res, CharacterListState>;
  @useResult
  $Res call(
      {List<CharacterModel> characterList,
      StateType stateType,
      String message});
}

/// @nodoc
class _$CharacterListStateCopyWithImpl<$Res, $Val extends CharacterListState>
    implements $CharacterListStateCopyWith<$Res> {
  _$CharacterListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterList = null,
    Object? stateType = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      characterList: null == characterList
          ? _value.characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterListStateCopyWith<$Res>
    implements $CharacterListStateCopyWith<$Res> {
  factory _$$_CharacterListStateCopyWith(_$_CharacterListState value,
          $Res Function(_$_CharacterListState) then) =
      __$$_CharacterListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CharacterModel> characterList,
      StateType stateType,
      String message});
}

/// @nodoc
class __$$_CharacterListStateCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res, _$_CharacterListState>
    implements _$$_CharacterListStateCopyWith<$Res> {
  __$$_CharacterListStateCopyWithImpl(
      _$_CharacterListState _value, $Res Function(_$_CharacterListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterList = null,
    Object? stateType = null,
    Object? message = null,
  }) {
    return _then(_$_CharacterListState(
      characterList: null == characterList
          ? _value._characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CharacterListState implements _CharacterListState {
  const _$_CharacterListState(
      {required final List<CharacterModel> characterList,
      required this.stateType,
      this.message = ""})
      : _characterList = characterList;

  final List<CharacterModel> _characterList;
  @override
  List<CharacterModel> get characterList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterList);
  }

  @override
  final StateType stateType;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'CharacterListState(characterList: $characterList, stateType: $stateType, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListState &&
            const DeepCollectionEquality()
                .equals(other._characterList, _characterList) &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characterList), stateType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterListStateCopyWith<_$_CharacterListState> get copyWith =>
      __$$_CharacterListStateCopyWithImpl<_$_CharacterListState>(
          this, _$identity);
}

abstract class _CharacterListState implements CharacterListState {
  const factory _CharacterListState(
      {required final List<CharacterModel> characterList,
      required final StateType stateType,
      final String message}) = _$_CharacterListState;

  @override
  List<CharacterModel> get characterList;
  @override
  StateType get stateType;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterListStateCopyWith<_$_CharacterListState> get copyWith =>
      throw _privateConstructorUsedError;
}
