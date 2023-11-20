import 'package:flutter/material.dart';
import 'package:anime_client/widgets/topbar.dart';

void main() => runApp(const AnimeApp());

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: themeData,
      home: Anime()
      );
  }
}

class Anime extends StatefulWidget {
  const Anime({super.key});

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  int currentPageIndex = 0;
  //bool isDark = false;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;

  @override
  Widget build(BuildContext context) {
    /*final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);*/
        
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Colors.blue, Colors.pink],
            ),
          ),
          child: const TopBar(),
        ),
      ),
      body: const Center(
        child: Text('Content'),
      ),
    );
  }
}
