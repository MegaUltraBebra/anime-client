import 'package:anime_client/widgets/appbar.dart';
import 'package:flutter/material.dart';

class AnimesPage extends StatelessWidget {
  static const String route = '/catalog';
  const AnimesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: Center(
        child: ElevatedButton(
          child: const Text('catalog route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}