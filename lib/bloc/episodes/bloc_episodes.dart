import 'package:flutter_application_app_v2/bloc/episodes/states.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/episodes.dart';
import 'package:flutter_application_app_v2/repo/repo_episodes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';

class BlocEpisodes extends Bloc<EventBlocEpisodes, StateBlocEpisodes> {
  BlocEpisodes({
    required this.repo,
  }) : super(const StateBlocEpisodes.initial()) {
    on<EventEpisodesFetch>(_fetch);
    on<EventEpisodesNextPage>(_nextPage);
  }
  final RepoEpisodes repo;
  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
}
