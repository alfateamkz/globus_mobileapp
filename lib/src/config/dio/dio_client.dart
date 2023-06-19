import 'dart:io';

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:globus/src/config/constants/app_constants.dart';





final dio = Dio(
    BaseOptions(baseUrl: kHostUrl),
    );

class DioClient {
  // static const _baseUrl = '';

  static Dio createDio() {
    dio.interceptors.addAll({
      AwesomeDioInterceptor()  
      // AppInterceptors(),
      // AuthInterceptor(),
      // LogInterceptor(
      //   requestBody: true,
      //   responseBody: true,
      //   logPrint: (res) {
      //     log(res.toString(), name: 'BE');
      //   },
      // ),
      //DioCacheInterceptor(
      //  options: CacheOptions(
      //    store: HiveCacheStore(AppPathProvider.path),
      //    policy: CachePolicy.refreshForceCache,
      //    hitCacheOnErrorExcept: [],
      //    maxStale: const Duration(days: 7),
      //    priority: CachePriority.high,
      //  ),
      //),
    });

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    return dio;
  }

  DioClient._internal();

  static final _singleton = DioClient._internal();

  factory DioClient() => _singleton;
}
