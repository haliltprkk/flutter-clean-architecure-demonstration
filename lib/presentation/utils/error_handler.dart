import 'package:clean_architecture_demonstration/data/common/error_dto.dart';
import 'package:dio/dio.dart';

extension ErrorHandler on Object {
  String handleError() {
    try {
      if (this is DioError) {
        DioError dioError = this as DioError;
        if (dioError.type == DioErrorType.response) {
          ErrorDto errorDto = ErrorDto.fromJson(dioError.response?.data);
          return errorDto.toDomain().error;
        }
      }
    } catch (e) {}
    return "An unexpected error occurred";
  }
}
