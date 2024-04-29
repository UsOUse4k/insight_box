// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:insight_box/core/http_client/dio_module.dart' as _i5;
import 'package:insight_box/core/router/router_module.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final routerModule = _$RouterModule();
    gh.factory<_i3.Dio>(() => dioModule.dio());
    gh.lazySingleton<_i4.GoRouter>(() => routerModule.goRouter());
    return this;
  }
}

class _$DioModule extends _i5.DioModule {}

class _$RouterModule extends _i6.RouterModule {}
