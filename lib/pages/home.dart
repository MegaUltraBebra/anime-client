import 'package:anime_client/pages/signup.dart';
import 'package:anime_client/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: const SignupState(),
    );
  }
}