import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldBottomNavigationBar extends StatelessWidget {
  const ScaffoldBottomNavigationBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldBottomNavigationBar'));

  final StatefulNavigationShell navigationShell;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Главная'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: 'Аниме'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Персонажи'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Личный кабинет'),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int tappedIndex) {
          navigationShell.goBranch(tappedIndex);
        },
      ),
    );
  }
}