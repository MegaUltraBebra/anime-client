import 'package:anime_client/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:material_text_fields/utils/form_validation.dart';

class SigninState extends StatefulWidget {
  const SigninState({super.key});

  @override
  State<SigninState> createState() =>
      SigninPage();
}

class SigninPage extends State<SigninState>{
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  bool obscure = true;
  Icon icon = const Icon(Icons.visibility_outlined);

  bool conObscure = true;
  Icon conIcon = const Icon(Icons.visibility_outlined);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Вход'),
        leading: IconButton(
          onPressed: () {
            context.go("/home"); 
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'Email',
              labelText: 'Email', 
              textInputAction: TextInputAction.next,
              prefixIcon: const Icon(Icons.email_outlined),
              controller: _emailTextController,
              validator: FormValidation.emailTextField,
            ),

            const SizedBox(height: 20),

            MaterialTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'Password',
              labelText: 'Password',
              obscureText: obscure,
              textInputAction: TextInputAction.next,
              prefixIcon: const Icon(Icons.lock_outlined),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    if (obscure == true) {
                      obscure = false;
                      icon = const Icon(Icons.visibility_off_outlined);
                    } else {
                      obscure = true;
                      icon = const Icon(Icons.visibility_outlined);
                    }
                  });
                },
                icon: icon
              ),
              controller: _passwordTextController,
              validator: FormValidation.requiredTextField,
            ),
            
            const SizedBox(height: 40),

            SizedBox( 
                width: MediaQuery.of(context).size.height*0.23,
                height: MediaQuery.of(context).size.height*0.04,
                child: OutlinedButton(
                  style: outlinedButtonStyle,
                  onPressed: () {
                    
                  }, 
                  child: Text('Вход', style: textStyle)
                ),
              ),
          ],
        ),
      ),
    );
  }
}