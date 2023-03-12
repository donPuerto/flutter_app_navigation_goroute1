import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'route_names.dart';

class Profile extends StatelessWidget {
  final String userName;
  const Profile({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $userName'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Dashboard'),
          onPressed: () {
            context.goNamed(RouteNames.dashboard);
          },
        ),
      ),
    );
  }
}
