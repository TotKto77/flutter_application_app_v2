import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/location.dart';
import 'package:flutter_application_app_v2/constants/app_styles.dart';
import 'package:flutter_application_app_v2/locationScreenWidgets/detailed_location_screen.dart';

class LocationListViewWidget extends StatefulWidget {
  final List<Location> locationsList;

  const LocationListViewWidget({Key? key, required this.locationsList})
      : super(key: key);

  @override
  State<LocationListViewWidget> createState() => _LocationListViewWidgetState();
}

class _LocationListViewWidgetState extends State<LocationListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: widget.locationsList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemBuilder: (context, index) {
        Location location = widget.locationsList[index];
        return GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailedLocationScreen(location: location),
            ),
          ),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(location.dimension ?? "Неизвестен",
                      style: AppStyles.detailS12w400),
                  Text(location.type ?? "Неизвестен",
                      style: AppStyles.detailS12w400),
                  Text(location.created ?? "Неизвестен",
                      style: AppStyles.detailS12w400),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
