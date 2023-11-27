import 'package:anime_client/widgets/appbar.dart';
import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  static const String route = '/cart';
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}