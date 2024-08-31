// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthenticatedRouteWrapper.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthenticatedPageWrapper(),
      );
    },
    CreateOrderRoute.name: (routeData) {
      final args = routeData.argsAs<CreateOrderRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateOrderScreen(
          tableNo: args.tableNo,
          roomCode: args.roomCode,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ViewOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ViewOrderPage(),
      );
    },
  };
}

/// generated route for
/// [AuthenticatedPageWrapper]
class AuthenticatedRouteWrapper extends PageRouteInfo<void> {
  const AuthenticatedRouteWrapper({List<PageRouteInfo>? children})
      : super(
          AuthenticatedRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticatedRouteWrapper';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateOrderScreen]
class CreateOrderRoute extends PageRouteInfo<CreateOrderRouteArgs> {
  CreateOrderRoute({
    required String tableNo,
    required String roomCode,
    List<PageRouteInfo>? children,
  }) : super(
          CreateOrderRoute.name,
          args: CreateOrderRouteArgs(
            tableNo: tableNo,
            roomCode: roomCode,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateOrderRoute';

  static const PageInfo<CreateOrderRouteArgs> page =
      PageInfo<CreateOrderRouteArgs>(name);
}

class CreateOrderRouteArgs {
  const CreateOrderRouteArgs({
    required this.tableNo,
    required this.roomCode,
  });

  final String tableNo;

  final String roomCode;

  @override
  String toString() {
    return 'CreateOrderRouteArgs{tableNo: $tableNo, roomCode: $roomCode}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewOrderPage]
class ViewOrderRoute extends PageRouteInfo<void> {
  const ViewOrderRoute({List<PageRouteInfo>? children})
      : super(
          ViewOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ViewOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
