import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_dto.freezed.dart';

part 'info_dto.g.dart';

@freezed
class InfoDto with _$InfoDto {
  @JsonSerializable()
  const factory InfoDto({
    required int count,
    required int pages,
    required String next,
  }) = _InfoDto;

  factory InfoDto.fromJson(Map<String, dynamic> json) => _$InfoDtoFromJson(json);
}
