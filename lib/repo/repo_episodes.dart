import 'package:flutter_application_app_v2/homscreenWidgets/episodes.dart';
import 'package:flutter_application_app_v2/repo/api.dart';

class RepoEpisodes {
  RepoEpisodes({required this.api});
  final Api api;
  Future<ResultRepoEpisodes> fetch() => nextPage(1);
  Future<ResultRepoEpisodes> nextPage(int page) async {
    try {
      final result = await api.dio.get("/episode?page=$page");
      final bool isEndOfData = result.data['info']['next'] == null;
      final List json = result.data['result'] ?? [];
      final list = json.map((item) => Episode.fromJson(item));
      return ResultRepoEpisodes(
        episodes: list.toList(),
        isEndOfData: isEndOfData,
      );
    } catch (error) {
      print("Error : $error");
      return ResultRepoEpisodes(errorMessage: "errorMessage");
    }
  }
}

class ResultRepoEpisodes {
  ResultRepoEpisodes({
    this.errorMessage,
    this.episodes,
    this.isEndOfData,
  });
  late final String? errorMessage;
  final bool? isEndOfData;
  final List<Episode>? episodes;
}
