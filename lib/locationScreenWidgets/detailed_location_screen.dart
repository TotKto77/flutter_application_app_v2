import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/constants/app_styles.dart';
import '../homscreenWidgets/location.dart';

class DetailedLocationScreen extends StatelessWidget {
  const DetailedLocationScreen({super.key, required this.location});

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios), // Иконка "назад"
              onPressed: () {
                Navigator.of(context).pop(); // Вернуться на предыдущий экран
              },
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  location.name ?? '',
                  style: AppStyles.mainS16w500,
                ),
                Text(location.name ?? ''),
                Text(location.created ?? ''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
