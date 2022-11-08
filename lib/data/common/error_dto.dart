import 'package:clean_architecture_demonstration/domain/common/model/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_dto.freezed.dart';

part 'error_dto.g.dart';

@freezed
class ErrorDto with _$ErrorDto {
  const factory ErrorDto({
    @JsonKey(name: 'error') String? error,
  }) = _ErrorDto;

  factory ErrorDto.fromJson(Map<String, dynamic> json) => _$ErrorDtoFromJson(json);
}

extension Mapper on ErrorDto {
  ErrorModel toDomain() => ErrorModel(error: error ?? "An unexpected error occurred");
}
