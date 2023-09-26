import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import './characters_data.dart';
import '/ui/vmodel.dart';

class RikList extends StatefulWidget {
  const RikList({super.key});

  @override
  State<RikList> createState() => _RikListState();
}

class _RikListState extends State<RikList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: (16)),
      itemCount: characters.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 24,
      ),
      itemBuilder: (context, index) {
        Character character = characters[index];
        return ListTile(
          leading: CircleAvatar(
            radius: 37,
            backgroundImage: AssetImage(AppAssets.images.noAvatar),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.status ? 'Живой' : 'Мертвый',
                  style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                      color: character.status ? Colors.green : Colors.red),
                ),
                Text(
                  character.name,
                  style: character.nameTextStyle,
                ),
                Text(
                  character.species,
                  style: character.speciesTextStyle,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
