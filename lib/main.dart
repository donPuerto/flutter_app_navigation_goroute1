import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dashboard.dart';
import 'profile.dart';
import 'route_names.dart';

void main() => runApp(const MyApp());

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      routerConfig: _router,
    );
  }
}

/// The route configuration.
final GoRouter _router = GoRouter(
  // initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      name: RouteNames.dashboard,
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Dashboard(),
      routes: [
        GoRoute(
          name: RouteNames.profile,
          path: 'profile',
          builder: (BuildContext context, GoRouterState state) {
            return Profile(userName: state.queryParams["name"]!);
          },
        ),
      ],
    ),
  ],
);
