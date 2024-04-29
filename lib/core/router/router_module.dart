import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:insight_box/core/router/routes.dart';

@module
abstract class RouterModule {
  @lazySingleton
  GoRouter goRouter() {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      routes: [
        ...$appRoutes,
      ],
    );
  }
}
