import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/bloc/episodes/bloc_episodes.dart';
import 'package:flutter_application_app_v2/episodeWidgets/episode_taile.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/episodes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.data}) : super(key: key);

  final List<Episode> data;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text('episodesListIsEmpty'),
          ),
        ],
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<BlocEpisodes>(context).add(
            EventEpisodesFetch(),
          );
        },
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification) {
              if (notification.metrics.extentAfter == 0) {
                BlocProvider.of<BlocEpisodes>(context).add(
                  EventEpisodesNextPage(),
                );
              }
            }
            return false;
          },
          child: ListView.separated(
            padding: const EdgeInsets.only(
              top: 12.0,
              left: 12.0,
              right: 12.0,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) => EpisodesTile(data[index]),
            separatorBuilder: (context, _) => const SizedBox(height: 10),
          ),
        ),
      );
    }
  }
}
