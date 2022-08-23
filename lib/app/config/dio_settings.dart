// Package imports:
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioSettings {
  static const String baseUrl = 'https://run.mocky.io/v3';

  final BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 30000,
    receiveTimeout: 30000,
    followRedirects: false,
    validateStatus: (status) {
      return status != null && status <= 500;
    },
  );

  static Dio createDio({int connectTimeout = 30000}) {
    Dio dio = Dio(
      DioSettings()._getDioBaseOptions(connectTimeout: connectTimeout),
    );

    dio.interceptors.add(
      PrettyDioLogger(requestHeader: true, requestBody: true),
    );

    return dio;
  }

  BaseOptions _getDioBaseOptions({int connectTimeout = 5000}) {
    var options = _dioBaseOptions;
    options.connectTimeout = connectTimeout;
    options.receiveTimeout = connectTimeout;
    return options;
  }
}

class DioExceptions implements Exception {
  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = 'Request to server was canceled';
        break;
      case DioErrorType.connectTimeout:
        message = 'Connection timeout';
        break;
      case DioErrorType.other:
        message = 'No internet connection';
        break;
      case DioErrorType.receiveTimeout:
        message = 'Receive timeout';
        break;
      case DioErrorType.response:
        message = _handleError(
            dioError.response!.statusCode!, dioError.response!.data);
        break;
      case DioErrorType.sendTimeout:
        message = 'Send timeout';
        break;

      default:
        message = 'Something went wrong';
        break;
    }
  }

  String message = 'Something went wrong';

  String _handleError(int statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 404:
        return error['message'];
      case 500:
        return 'Internal server error';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
