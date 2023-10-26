import 'package:flutter/material.dart';
//import '../homescreen.dart';
import '../bottom_nav_bar.dart';
import '../constants/app_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.logScreenQest,
          style: AppStyles.singinTextHintldS14w400,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const MyBottomNavigation()),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.create,
            style: AppStyles.createAcauntS14w400,
          ),
        ),
      ],
    );
  }
}
