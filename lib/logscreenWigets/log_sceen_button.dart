import 'package:flutter/material.dart';
import '../bottom_NavigationBar.dart';
import './SingIn_button.dart';
import '../constants/app_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formfield;
  final TextEditingController loginController;
  final TextEditingController passController;

  const LoginButton({
    super.key,
    required this.formfield,
    required this.loginController,
    required this.passController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              if (formfield.currentState!.validate()) {
                FocusScope.of(context).unfocus();
                formfield.currentState?.save();
                if (loginController.text == "qwerty" &&
                    passController.text == "12345678901") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyBottomNavigation(),
                    ),
                  );
                } else {
//
//
//
                  //
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      content: Container(
                        width: 319,
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.error,
                              style: AppStyles.alertS20w500,
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              AppLocalizations.of(context)!.alertMesage,
                              style: AppStyles.alert2S20w500,
                            ),
                            // const SizedBox(
                            //   height: 24,
                            // ),
                            Container(
                              margin: const EdgeInsets.only(top: 24),
                              alignment: Alignment.bottomCenter,
                              constraints: const BoxConstraints(
                                  maxWidth: double.infinity),
                              height: 40,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: const BorderSide(color: Colors.blue),
                                  ),
                                  elevation: 0,
                                  padding: const EdgeInsets.all(0.0),
                                  backgroundColor: Colors.transparent,
                                ),
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text(
                                  'OK',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }
            },
            child: Text(
              AppLocalizations.of(context)!.singIn,
            ),
          ),
        ),
        const SingIn(),
      ],
    );
  }
}
