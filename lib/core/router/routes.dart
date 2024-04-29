import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:insight_box/core/widgets/wrapper_scaffold.dart';
import 'package:insight_box/features/auth/presentation/pages/auth_page.dart';
import 'package:insight_box/features/home/presentation/pages/home_page.dart';

part 'routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<InitialRoute>(path: "/")
class InitialRoute extends GoRouteData {
  const InitialRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return const AuthRoute().location;
  }
}

@TypedGoRoute<AuthRoute>(path: "/auth")
class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AuthPage();
  }
}

@TypedShellRoute<WrapperRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(path: "/home"),
  ],
)
class WrapperRoute extends ShellRouteData {
  const WrapperRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return WrapperScaffold(navigator);
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: HomePage(),
    );
  }
}
