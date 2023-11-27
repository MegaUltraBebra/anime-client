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

import 'package:anime_client/themes/colors.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';

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
                builder: (context, state) => const HomePage()
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
            backgroundColor: AppColors.primary,
            actionsIconTheme: IconThemeData(),
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25
            )
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.primary,
          ),
          inputDecorationTheme: FilledOrOutlinedTextTheme(
            radius: 8,
            contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            fillColor: Colors.transparent,
            prefixIconColor: Colors.green,
            enabledColor: Colors.grey,
            focusedColor: Colors.green,
            floatingLabelStyle: const TextStyle(color: Colors.green),
            width: 1.5,
            labelStyle: const TextStyle(fontSize: 16, color: AppColors.textcolor),
          ),
          elevatedButtonTheme: const ElevatedButtonThemeData(
            
          )
      ),
      routerConfig: _router,
    );
  }
}