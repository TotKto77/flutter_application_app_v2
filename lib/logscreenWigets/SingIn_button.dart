import 'package:flutter/material.dart';
//import '../homescreen.dart';
import '../constants/app_styles.dart';
import '../bottom_NavigationBar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 20,
      width: 319,
      //margin: const EdgeInsets.only(top: 20),
      child: Row(
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
              ))
        ],
      ),
    );
  }
}
