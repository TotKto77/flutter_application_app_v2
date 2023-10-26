import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/episodes.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/episodes.dart';

class EpisodesTile extends StatefulWidget {
  final List<Episode> episodeList;
  const EpisodesTile(Episode data, {super.key, required this.episodeList});

  @override
  State<EpisodesTile> createState() => _EpisodesTileState();
}

class _EpisodesTileState extends State<EpisodesTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: widget.episodeList.length,
        separatorBuilder: (context, index) => const SizedBox(height: 24),
        itemBuilder: (context, index) {
          Episode episode = widget.episodeList[index];
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text()],
              ),
            ),
          );
        });
  }
}
