import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palomas_assignment/blocs/app_initialization_bloc.dart';
import 'package:palomas_assignment/blocs/create_order_bloc.dart';
import 'package:palomas_assignment/blocs/view_order_bloc.dart';
import 'package:palomas_assignment/data/local_repositories/dining_table.dart';
import 'package:palomas_assignment/data/local_repositories/orderr.dart';
import 'package:palomas_assignment/data/local_repositories/rooms.dart';
import 'package:palomas_assignment/router/app_route.dart';
import 'package:palomas_assignment/theme/app_theme.dart';
import 'package:palomas_assignment/utils/constants.dart';

import 'blocs/home_items_bloc.dart';
import 'data/sql/sql_store.dart';

class MainApplication extends StatefulWidget {
  final AppRouter appRouter;
  final LocalSqlDataStore sql;

  const MainApplication({
    super.key,
    required this.appRouter,
    required this.sql,
  });

  @override
  State<StatefulWidget> createState() {
    return MainApplicationState();
  }
}

class MainApplicationState extends State<MainApplication>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LocalSqlDataStore>.value(value: widget.sql),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => AppInitializationBloc(
              const AppInitializationState.loading(),
              diningTableLocalRepository: DiningTableLocalRepository(
                widget.sql,
              ),
              roomLocalRepository: RoomLocalRepository(
                widget.sql,
              ),
            )..add(
                const InitializeAppEvent(),
              ),
          ),
          BlocProvider(
            create: (ctx) => HomeItemsBloc(
              const HomeItemsState(),
              diningTableLocalRepository: DiningTableLocalRepository(
                widget.sql,
              ),
            ),
          ),
          BlocProvider(
            create: (ctx) => CreateOrderBloc(
              diningTableLocalRepository: DiningTableLocalRepository(
                widget.sql,
              ),
              orderLocalRepository: OrderLocalRepository(
                widget.sql,
              ),
            ),
          ),
          BlocProvider(
            create: (ctx) => ViewOrdersBloc(
              const ViewOrdersState(),
              orderLocalRepository: OrderLocalRepository(
                widget.sql,
              ),
              diningTableLocalRepository: DiningTableLocalRepository(
                widget.sql,
              ),
            ),
          ),
        ],
        child: BlocBuilder<AppInitializationBloc, AppInitializationState>(
            builder: (context, appInitState) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              return Banner(
                location: BannerLocation.topEnd,
                color: Colors.red,
                message: 'palomas_assignment',
                child: child,
              );
            },
            theme: AppTheme.instance.mobileTheme,
            routeInformationParser: widget.appRouter.defaultRouteParser(),
            scaffoldMessengerKey: scaffoldMessengerKey,
            routerDelegate: AutoRouterDelegate.declarative(
              widget.appRouter,
              routes: (handler) => appInitState.maybeWhen(
                  orElse: () => [],
                  completed: (rooms) => [
                        const AuthenticatedRouteWrapper(),
                      ]),
            ),
          );
        }),
      ),
    );
  }
}
