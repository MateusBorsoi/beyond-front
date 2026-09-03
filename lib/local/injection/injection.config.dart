// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../cubit/products_cubit.dart' as _i507;
import '../../data/datasources/products_datasource.dart' as _i337;
import '../../data/repositories/products_repository.dart' as _i907;
import '../../data/useCases/products_use_case.dart' as _i70;
import '../../modules/remote/remote_module.dart' as _i632;
import '../../modules/spends/mobx/auth_store.dart' as _i405;
import '../../modules/spends/mobx/cart_store.dart' as _i8;
import '../../modules/spends/mobx/products_store.dart' as _i72;
import '../../modules/spends/mobx/spends.dart' as _i1046;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final remoteModule = _$RemoteModule();
    gh.singleton<_i405.AuthStore>(() => _i405.AuthStore());
    gh.singleton<_i8.CartStore>(() => _i8.CartStore());
    gh.singleton<_i72.ProductsStore>(() => _i72.ProductsStore());
    gh.singleton<_i1046.Spends>(() => _i1046.Spends());
    gh.singleton<_i361.Dio>(
      () => remoteModule.provideBaseApi(),
      instanceName: 'baseUrl',
    );
    gh.factory<_i337.ProductsDatasource>(
      () =>
          _i337.ProductsDatasourceImpl(gh<_i361.Dio>(instanceName: 'baseUrl')),
    );
    gh.factory<_i907.ProductsRepository>(
      () => _i907.ProductsRepositoryImpl(gh<_i337.ProductsDatasource>()),
    );
    gh.factory<_i70.ProductUseCase>(
      () => _i70.ProductUseCase(gh<_i907.ProductsRepository>()),
    );
    gh.factory<_i507.ProductCubit>(
      () => _i507.ProductCubit(gh<_i70.ProductUseCase>()),
    );
    return this;
  }
}

class _$RemoteModule extends _i632.RemoteModule {}
