// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterDetailState {
  CharacterModel? get character => throw _privateConstructorUsedError;
  StateType get stateType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailStateCopyWith<CharacterDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailStateCopyWith<$Res> {
  factory $CharacterDetailStateCopyWith(CharacterDetailState value,
          $Res Function(CharacterDetailState) then) =
      _$CharacterDetailStateCopyWithImpl<$Res, CharacterDetailState>;
  @useResult
  $Res call({CharacterModel? character, StateType stateType, String message});

  $CharacterModelCopyWith<$Res>? get character;
}

/// @nodoc
class _$CharacterDetailStateCopyWithImpl<$Res,
        $Val extends CharacterDetailState>
    implements $CharacterDetailStateCopyWith<$Res> {
  _$CharacterDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? stateType = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as CharacterModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $CharacterModelCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $CharacterModelCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterDetailStateCopyWith<$Res>
    implements $CharacterDetailStateCopyWith<$Res> {
  factory _$$_CharacterDetailStateCopyWith(_$_CharacterDetailState value,
          $Res Function(_$_CharacterDetailState) then) =
      __$$_CharacterDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterModel? character, StateType stateType, String message});

  @override
  $CharacterModelCopyWith<$Res>? get character;
}

/// @nodoc
class __$$_CharacterDetailStateCopyWithImpl<$Res>
    extends _$CharacterDetailStateCopyWithImpl<$Res, _$_CharacterDetailState>
    implements _$$_CharacterDetailStateCopyWith<$Res> {
  __$$_CharacterDetailStateCopyWithImpl(_$_CharacterDetailState _value,
      $Res Function(_$_CharacterDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? stateType = null,
    Object? message = null,
  }) {
    return _then(_$_CharacterDetailState(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as CharacterModel?,
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

class _$_CharacterDetailState implements _CharacterDetailState {
  const _$_CharacterDetailState(
      {required this.character, required this.stateType, this.message = ""});

  @override
  final CharacterModel? character;
  @override
  final StateType stateType;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'CharacterDetailState(character: $character, stateType: $stateType, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailState &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character, stateType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDetailStateCopyWith<_$_CharacterDetailState> get copyWith =>
      __$$_CharacterDetailStateCopyWithImpl<_$_CharacterDetailState>(
          this, _$identity);
}

abstract class _CharacterDetailState implements CharacterDetailState {
  const factory _CharacterDetailState(
      {required final CharacterModel? character,
      required final StateType stateType,
      final String message}) = _$_CharacterDetailState;

  @override
  CharacterModel? get character;
  @override
  StateType get stateType;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterDetailStateCopyWith<_$_CharacterDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
