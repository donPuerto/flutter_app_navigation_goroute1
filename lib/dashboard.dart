import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'route_names.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Profile'),
          onPressed: () {
            context.goNamed(
              RouteNames.profile,
              queryParams: {'name': "Don Puerto"},
            );
          },
        ),
      ),
    );
  }
}
