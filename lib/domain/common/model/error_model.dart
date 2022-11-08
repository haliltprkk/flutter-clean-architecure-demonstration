import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    required String error,
  }) = _ErrorModel;
}
