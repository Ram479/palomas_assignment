import 'package:auto_route/auto_route.dart';

import '../pages/auth_wrapper.dart';
import '../pages/create_order.dart';
import '../pages/home.dart';
import '../pages/view_order.dart';

export 'package:auto_route/auto_route.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(
  modules: [],
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> routes = [
    AutoRoute(
      page: AuthenticatedRouteWrapper.page,
      path: '/',
      children: [
        AutoRoute(
          page: HomeRoute.page,
          path: 'home',
          initial: true,
        ),
        AutoRoute(
          page: CreateOrderRoute.page,
          path: 'create-order',
        ),
        AutoRoute(
          page: ViewOrderRoute.page,
          path: 'view-order',
        ),
      ],
    )
  ];
}
