import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthenticatedRouteObserver extends AutoRouterObserver {
  AuthenticatedRouteObserver();

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
