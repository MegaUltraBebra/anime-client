import 'package:anime_client/themes/styles.dart';
import 'package:anime_client/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.height*0.2,
                height: MediaQuery.of(context).size.height*0.04,
                child: OutlinedButton(
                  style: outlinedButtonStyle,
                  onPressed: () {
                    context.go('/signin');
                  },
                  child: Text('Вход', style: outlinedTextStyle)
                ),
              ),

              const SizedBox(height: 20),

              SizedBox( 
                width: MediaQuery.of(context).size.height*0.23,
                height: MediaQuery.of(context).size.height*0.04,
                child: FilledButton.tonal(
                  style: filledButtonStyle,
                  onPressed: () {
                    context.go('/signup');
                  }, 
                  child: const Text('Регистрация')
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}