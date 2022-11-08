import 'package:clean_architecture_demonstration/data/common/error_dto.dart';
import 'package:dio/dio.dart';

import '../../domain/common/model/error_model.dart';

extension ErrorHandler on DioError {
  String handleError() {
    try {
      if (type == DioErrorType.response) {
        ErrorDto errorDto = ErrorDto.fromJson(response?.data);
        return errorDto.toDomain().error;
      }
    } catch (e) {}
    return "An unexpected error occurred";
  }
}
