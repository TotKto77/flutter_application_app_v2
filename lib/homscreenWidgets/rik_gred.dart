import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import '/ui/vmodel.dart';

class RikGrid extends StatefulWidget {
  const RikGrid({super.key});

  @override
  State<RikGrid> createState() => _RikGridState();
}

class _RikGridState extends State<RikGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: PersonsListVmodel.map((character) {
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
                backgroundImage: AssetImage(AppAssets.images.noAvatar),
              ),
              const SizedBox(
                height: 18,
              ),
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
        );
      }).toList(),
    );
  }
}
