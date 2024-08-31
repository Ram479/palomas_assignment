import 'package:flutter/material.dart';
import 'package:palomas_assignment/router/app_route.dart';

import 'app.dart';
import 'data/sql/sql_store.dart';

final LocalSqlDataStore _sql = LocalSqlDataStore();
int i = 0;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addObserver(AppLifecycleObserver());

  runApp(MainApplication(
    appRouter: AppRouter(),
    sql: _sql,
  ));
}

class AppLifecycleObserver extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      //
    } else if (state == AppLifecycleState.resumed) {
      // Stop the background service when the app is terminated
    }
  }
}
