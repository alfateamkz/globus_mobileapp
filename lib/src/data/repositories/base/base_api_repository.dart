import 'dart:io' show HttpStatus;

import 'package:dio/dio.dart';
import 'package:globus/src/core/resources/data_state.dart';
import 'package:meta/meta.dart';
import 'package:retrofit/retrofit.dart';

abstract class BaseApiRepository {

  @protected
  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
    int? statusCode = HttpStatus.ok,
  }) async {
 
    try {
      final httpResponse = await request();
      if (httpResponse.response.statusCode == statusCode) {
        return DataSuccess(httpResponse.data);
      } else {
        throw DioError(
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
        );
      }
    } on DioError catch (error) {
      return DataFailed(error);
    }
  }
}
