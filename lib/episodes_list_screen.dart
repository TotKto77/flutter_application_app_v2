import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_app_v2/bloc/episodes/bloc_episodes.dart';
import 'package:flutter_application_app_v2/bloc/episodes/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_app_v2/episodeWidgets/bodywidget.dart';

class EpisodeListSceen extends StatelessWidget {
  const EpisodeListSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Expanded(child: BlocBuilder<BlocEpisodes, StateBlocEpisodes>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox.shrink(),
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              data: (state) => Body(data: state.data),
              error: (state) => ErrorWidget(state.error),
            );
          },
        ))
      ]),
    ));
  }
}
