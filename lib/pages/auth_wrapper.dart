import 'package:flutter/material.dart';

import '../router/app_route.dart';
import '../widgets/side_bar.dart';

@RoutePage()
class AuthenticatedPageWrapper extends StatelessWidget {
  const AuthenticatedPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        actions: null,
      ),
      drawer: const Drawer(child: SideBar()),
      body: const AutoRouter(),
    );
  }
}
