import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/person.dart';
import 'package:flutter_application_app_v2/constants/app_assets.dart';
import 'package:flutter_application_app_v2/constants/app_styles.dart';

class RikGrid extends StatefulWidget {
  final List<Person> personsList;

  const RikGrid({Key? key, required this.personsList}) : super(key: key);

  @override
  State<RikGrid> createState() => _RikGridState();
}

class _RikGridState extends State<RikGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: widget.personsList.map((person) {
        ImageProvider<Object>? imageProvider = person.image != null
            ? NetworkImage(person.image!)
            : AssetImage(AppAssets.images.noAvatar) as ImageProvider<Object>?;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          width: 164,
          height: 192,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: imageProvider,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                person.status ?? "Неизвестен",
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                  color: person.status == "Alive" ? Colors.green : Colors.red,
                ),
              ),
              Text(person.name ?? "Неизвестно", style: AppStyles.mainS16w500),
              Text('${person.species ?? "Неизвестен"},${person.gender ?? "Неизвестен"}',
                  style: AppStyles.detailS12w400),
            ],
          ),
        );
      }).toList(),
    );
  }
}
