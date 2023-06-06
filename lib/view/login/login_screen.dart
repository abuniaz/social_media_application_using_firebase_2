import 'package:flutter/material.dart';
import 'package:tech_media/res/component/input_text_field.dart';
import 'package:tech_media/res/component/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InputTextField(
              myController: emailController,
              focusNode: emailFocusNode,
              onFieldSubmittedValue: (value) {},
              onValidator: (value) {
                return value.isEmpty ? 'enter email' : null;
              },
              enable: true,
              keyBoardType: TextInputType.emailAddress,
              hint: 'Email',
              obscureText: false),
          const SizedBox(
            height: 40,
          ),
          RoundButton(
            title: 'Login',
            loading: false,
            onPress: () {},
          )
        ],
      ),
    );
  }
}
