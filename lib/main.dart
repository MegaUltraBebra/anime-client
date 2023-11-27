import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'package:anime_client/pages/index.dart';
import 'package:anime_client/pages/characters.dart';
import 'package:anime_client/pages/animes.dart';
import 'package:anime_client/pages/home.dart';
import 'package:anime_client/pages/notifications.dart';
import 'package:anime_client/pages/search.dart';

import 'package:anime_client/widgets/bottomnavigation.dart';

Future<void> main() async {
  usePathUrlStrategy();
  runApp(Anime());
}

class Anime extends StatelessWidget {
  Anime({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[

      GoRoute(
        path: '/notifications',
        builder: (BuildContext context, GoRouterState state) {
          return NotificationsPage();
        },
      ),

      GoRoute(
        path: '/search',
        builder: (BuildContext context, GoRouterState state) {
          return const SearchMenu();
        },
      ),

      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return ScaffoldBottomNavigationBar(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/',
                builder: (BuildContext context, GoRouterState state) {
                  return const IndexPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/animes',
                builder: (BuildContext context, GoRouterState state) {
                  return const AnimesPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/characters',
                builder: (BuildContext context, GoRouterState state) {
                  return const CharactersPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/home',
                builder: (BuildContext context, GoRouterState state) {
                  return const HomePage();
                },
              ),
            ],
          ),
        ],
      ),
    ],
    
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Anime',
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 254, 144, 0),
            actionsIconTheme: IconThemeData(),
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25
            )
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color.fromARGB(255, 254, 144, 0),
            unselectedItemColor: Color.fromARGB(255, 254, 144, 0),
          ),
      ),
      routerConfig: _router,
    );
  }
}