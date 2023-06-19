// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiService implements ApiService {
  _ApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://54.38.79.153:3000';
  }

  final Dio _dio;

  String? baseUrl;

  // @override
  // Future<HttpResponse<AuthResponse>> userLogin(request) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{r'Content-Type': 'application/json'};
  //   _headers.removeWhere((k, v) => v == null);
  //   final _data = <String, dynamic>{};
  //   _data.addAll(request.toJson());
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<HttpResponse<AuthResponse>>(Options(
  //     method: 'POST',
  //     headers: _headers,
  //     extra: _extra,
  //     contentType: 'application/json',
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/v1/user',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = AuthResponse.fromJson(_result.data!);
  //   final httpResponse = HttpResponse(value, _result);
  //   return httpResponse;
  // }

  // @override
  // Future<HttpResponse<Profile>> profileEdit(
  //   id,
  //   request,
  // ) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{r'Content-Type': 'application/json'};
  //   _headers.removeWhere((k, v) => v == null);
  //   final _data = <String, dynamic>{};
  //   _data.addAll(request.toJson());
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<HttpResponse<Profile>>(Options(
  //     method: 'PUT',
  //     headers: _headers,
  //     extra: _extra,
  //     contentType: 'application/json',
  //   )
  //           .compose(
  //             _dio.options,
  //             '/api/v1/user/profile/${id}',
  //             queryParameters: queryParameters,
  //             data: _data,
  //           )
  //           .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = Profile.fromJson(_result.data!);
  //   final httpResponse = HttpResponse(value, _result);
  //   return httpResponse;
  // }

  @override
  Future<HttpResponse<ActivitiesResponse>> getActivities() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<ActivitiesResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/activity',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = ActivitiesResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

    @override
  Future<HttpResponse<DiscussionsResponse>> getDiscussions() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<DiscussionsResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/discussion',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = DiscussionsResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }


  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
