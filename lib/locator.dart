import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}


//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}


//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}


//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}



//new

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'logger_interceptor.dart';
import 'repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiRepository>(ApiRepository());
}

class DioClient {
  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
      baseUrl: 'https://bailyschool.com/api/v2/',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here', // Add your token here
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio => _dio;

  Future<Response> getRequest(String path) async {
    return await _dio.get(path);
  }

  Future<Response> postRequest(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}
