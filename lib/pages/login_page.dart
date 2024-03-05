import 'package:flutter/material.dart';
import 'package:supermarketing/components/my_button.dart';
import 'package:supermarketing/components/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}); 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 249, 236, 1),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(85.0),
                  child: Image.asset(
                    'lib/assets/coffee.png',
                    scale: 3,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                child: Text('Welcome'),
              ),
              const MyTextfield(),
              const SizedBox(
                height: 10,
              ),
              const MyTextfield(),
              const SizedBox(
                height: 14,
              ),
              const MyButton(),
            ],
          ),
        ),
      )),
    );
  }
}
