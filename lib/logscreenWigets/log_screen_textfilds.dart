import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_styles.dart';
import '../constants/app_assets.dart';
import '../constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginTextFields extends StatelessWidget {
  final TextEditingController loginController;
  final TextEditingController passController;

  const LoginTextFields({
    Key? key,
    required this.loginController,
    required this.passController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
          child: Text(
            AppLocalizations.of(context)!.login,
            style: AppStyles.loginS14w400,
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.name,
          style: AppStyles.loginTextFeldS14w400,
          controller: loginController,
          onChanged: (text) {},
          validator: (value) {
            if (value == null || loginController.text.length < 3) {
              return AppLocalizations.of(context)!.loginLengh;
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            fillColor: AppColors.neutral1,
            filled: true,
            hintText: AppLocalizations.of(context)!.login,
            counterText: "",
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 29, 0),
              child: SvgPicture.asset(
                AppAssets.svg.accont,
              ),
            ),

            //
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          height: 20,
          child: Text(
            AppLocalizations.of(context)!.password,
            style: AppStyles.loginS14w400,
            textAlign: TextAlign.left,
          ),
        ),
        TextFormField(
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.number,
          controller: passController,
          style: AppStyles.loginTextFeldS14w400,
          obscureText: true,
          validator: (value) {
            if (value == null || passController.text.length < 8) {
              return AppLocalizations.of(context)!.passwordLengh;
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            fillColor: AppColors.neutral1,
            filled: true,
            hintText: AppLocalizations.of(context)!.password,
            counterText: "",
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 29, 0),
              child: SvgPicture.asset(
                AppAssets.svg.password,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
