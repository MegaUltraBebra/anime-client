import 'package:anime_client/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class IndexPage extends StatelessWidget {

  static const String route = '/';
  
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: Center(
        child: ElevatedButton(
          child: const Text('index route'),
          onPressed: () {
            context.go('/catalog');
          },
        ),
      ),
    );
  }
}