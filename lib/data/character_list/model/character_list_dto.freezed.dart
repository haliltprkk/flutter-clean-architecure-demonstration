// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterListDto _$CharacterListDtoFromJson(Map<String, dynamic> json) {
  return _CharacterListDto.fromJson(json);
}

/// @nodoc
mixin _$CharacterListDto {
  @JsonKey(name: "info")
  InfoDto get info => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<CharacterDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterListDtoCopyWith<CharacterListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListDtoCopyWith<$Res> {
  factory $CharacterListDtoCopyWith(
          CharacterListDto value, $Res Function(CharacterListDto) then) =
      _$CharacterListDtoCopyWithImpl<$Res, CharacterListDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "info") InfoDto info,
      @JsonKey(name: "results") List<CharacterDto> results});

  $InfoDtoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharacterListDtoCopyWithImpl<$Res, $Val extends CharacterListDto>
    implements $CharacterListDtoCopyWith<$Res> {
  _$CharacterListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDto,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoDtoCopyWith<$Res> get info {
    return $InfoDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterListDtoCopyWith<$Res>
    implements $CharacterListDtoCopyWith<$Res> {
  factory _$$_CharacterListDtoCopyWith(
          _$_CharacterListDto value, $Res Function(_$_CharacterListDto) then) =
      __$$_CharacterListDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "info") InfoDto info,
      @JsonKey(name: "results") List<CharacterDto> results});

  @override
  $InfoDtoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_CharacterListDtoCopyWithImpl<$Res>
    extends _$CharacterListDtoCopyWithImpl<$Res, _$_CharacterListDto>
    implements _$$_CharacterListDtoCopyWith<$Res> {
  __$$_CharacterListDtoCopyWithImpl(
      _$_CharacterListDto _value, $Res Function(_$_CharacterListDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_CharacterListDto(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDto,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterListDto implements _CharacterListDto {
  const _$_CharacterListDto(
      {@JsonKey(name: "info") required this.info,
      @JsonKey(name: "results") required final List<CharacterDto> results})
      : _results = results;

  factory _$_CharacterListDto.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterListDtoFromJson(json);

  @override
  @JsonKey(name: "info")
  final InfoDto info;
  final List<CharacterDto> _results;
  @override
  @JsonKey(name: "results")
  List<CharacterDto> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CharacterListDto(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListDto &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterListDtoCopyWith<_$_CharacterListDto> get copyWith =>
      __$$_CharacterListDtoCopyWithImpl<_$_CharacterListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterListDtoToJson(
      this,
    );
  }
}

abstract class _CharacterListDto implements CharacterListDto {
  const factory _CharacterListDto(
      {@JsonKey(name: "info")
          required final InfoDto info,
      @JsonKey(name: "results")
          required final List<CharacterDto> results}) = _$_CharacterListDto;

  factory _CharacterListDto.fromJson(Map<String, dynamic> json) =
      _$_CharacterListDto.fromJson;

  @override
  @JsonKey(name: "info")
  InfoDto get info;
  @override
  @JsonKey(name: "results")
  List<CharacterDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterListDtoCopyWith<_$_CharacterListDto> get copyWith =>
      throw _privateConstructorUsedError;
}
