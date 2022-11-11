import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';

part 'location_dto.g.dart';

@freezed
@JsonSerializable()
class LocationDto with _$LocationDto {
  const factory LocationDto({
    required String name,
    required String url,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) => _$LocationDtoFromJson(json);
}
