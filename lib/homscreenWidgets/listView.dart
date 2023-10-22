import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/person.dart';
import 'package:flutter_application_app_v2/constants/app_assets.dart';
import 'package:flutter_application_app_v2/constants/app_styles.dart';

class RikList extends StatefulWidget {
  final List<Person> personsList;

  const RikList({Key? key, required this.personsList}) : super(key: key);

  @override
  State<RikList> createState() => _RikListState();
}

class _RikListState extends State<RikList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: widget.personsList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemBuilder: (context, index) {
        Person person = widget.personsList[index];
        ImageProvider<Object>? imageProvider = person.image != null
            ? NetworkImage(person.image!)
            : AssetImage(AppAssets.images.noAvatar) as ImageProvider<Object>?;
        return ListTile(
          leading: CircleAvatar(
            radius: 37,
            backgroundImage: imageProvider,
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  person.status ?? "Неизвестен",
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: person.status == "Alive" ? Colors.green : Colors.red,
                  ),
                ),
                Text(person.name ?? "Неизвестно", style: AppStyles.mainS16w500),
                Text(
                    '${person.species ?? "Неизвестен"},${person.gender ?? "Неизвестен"}',
                    style: AppStyles.detailS12w400),
              ],
            ),
          ),
        );
      },
    );
  }
}
