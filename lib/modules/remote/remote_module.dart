import 'package:Beyond/local/env_settings.dart';
import 'package:Beyond/modules/remote/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RemoteModule {
  @Named("baseUrl")
  @singleton
  Dio provideBaseApi() {
    return DioFactory.create(baseUrl: EnvSettings.baseUrl, interceptors: []);
  }
}
