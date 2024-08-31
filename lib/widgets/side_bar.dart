import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palomas_assignment/router/app_route.dart';

import '../data/sql/sql_store.dart';
import 'icon_tile.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          color: theme.colorScheme.secondary.withOpacity(0.12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  'User',
                  style: theme.textTheme.displayMedium,
                ),
                Text(
                  '+91- 8917607769',
                  style: theme.textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
        ),
        AppIconTile(
          title: 'Home',
          icon: Icons.home,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
            // context.router.replaceAll([HomeRoute()]);
          },
        ),
        AppIconTile(
          title: 'View Orders',
          icon: Icons.fastfood_rounded,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
            context.router.push(const ViewOrderRoute());
          },
        ),
        AppIconTile(
          title: 'DB',
          icon: Icons.storage,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DriftDbViewer(
                  context.read<LocalSqlDataStore>(),
                ),
              ),
            );
            // Navigator.of(context, rootNavigator: true).pop();
            // context.router.replaceAll([HomeRoute()]);
          },
        ),
      ],
    );
  }
}
