import 'package:flutter/material.dart';

import 'constants/app_assets.dart';
import './logscreenWigets/log_sceen_button.dart';
import './logscreenWigets/log_screen_textfilds.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formfield = GlobalKey<FormState>();
  final loginController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    super.dispose();

    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formfield,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(57, 20, 49, 65),
                    child: Image.asset(AppAssets.images.loggScreen),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        LoginTextFields(
                          loginController: loginController,
                          passController: passController,
                        ),
                        LoginButton(
                          formfield: formfield,
                          loginController: loginController,
                          passController: passController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
