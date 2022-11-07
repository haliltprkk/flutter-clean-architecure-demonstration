// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoDto _$InfoDtoFromJson(Map<String, dynamic> json) {
  return _InfoDto.fromJson(json);
}

/// @nodoc
mixin _$InfoDto {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoDtoCopyWith<InfoDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoDtoCopyWith<$Res> {
  factory $InfoDtoCopyWith(InfoDto value, $Res Function(InfoDto) then) =
      _$InfoDtoCopyWithImpl<$Res, InfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'pages') int pages,
      @JsonKey(name: 'next') String next});
}

/// @nodoc
class _$InfoDtoCopyWithImpl<$Res, $Val extends InfoDto>
    implements $InfoDtoCopyWith<$Res> {
  _$InfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoDtoCopyWith<$Res> implements $InfoDtoCopyWith<$Res> {
  factory _$$_InfoDtoCopyWith(
          _$_InfoDto value, $Res Function(_$_InfoDto) then) =
      __$$_InfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'pages') int pages,
      @JsonKey(name: 'next') String next});
}

/// @nodoc
class __$$_InfoDtoCopyWithImpl<$Res>
    extends _$InfoDtoCopyWithImpl<$Res, _$_InfoDto>
    implements _$$_InfoDtoCopyWith<$Res> {
  __$$_InfoDtoCopyWithImpl(_$_InfoDto _value, $Res Function(_$_InfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
  }) {
    return _then(_$_InfoDto(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_InfoDto implements _InfoDto {
  const _$_InfoDto(
      {@JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'pages') required this.pages,
      @JsonKey(name: 'next') required this.next});

  factory _$_InfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_InfoDtoFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'pages')
  final int pages;
  @override
  @JsonKey(name: 'next')
  final String next;

  @override
  String toString() {
    return 'InfoDto(count: $count, pages: $pages, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoDtoCopyWith<_$_InfoDto> get copyWith =>
      __$$_InfoDtoCopyWithImpl<_$_InfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoDtoToJson(
      this,
    );
  }
}

abstract class _InfoDto implements InfoDto {
  const factory _InfoDto(
      {@JsonKey(name: 'count') required final int count,
      @JsonKey(name: 'pages') required final int pages,
      @JsonKey(name: 'next') required final String next}) = _$_InfoDto;

  factory _InfoDto.fromJson(Map<String, dynamic> json) = _$_InfoDto.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'pages')
  int get pages;
  @override
  @JsonKey(name: 'next')
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$_InfoDtoCopyWith<_$_InfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
