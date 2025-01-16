import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioSingletonDataSource {
  static final String _baseurl = dotenv.env['API_URL']!;
  static final DioSingletonDataSource _instance = DioSingletonDataSource._internal(
    BaseOptions(baseUrl: _baseurl),
  );
  static Dio? _dio;

  DioSingletonDataSource._internal(BaseOptions options) {
    _dio = Dio(options);
  }

  factory DioSingletonDataSource() {
    return _instance;
  }

  Dio get dioInstance => _dio!;
}
