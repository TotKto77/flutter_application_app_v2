import 'package:flutter_application_app_v2/repo/api.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/location.dart';

class RepoLocations {
  RepoLocations({required this.api});

  final Api api;

  Future<ResultRepoLocations> filterByName(String name) async {
    try {
      final result = await api.dio.get(
        '/location',
        queryParameters: {
          "name": name,
        },
      );

      final List locationsJson = result.data['results'] ?? [];
      final locations = locationsJson
          .map(
            (item) => Location.fromJson(item),
          )
          .toList();
      return ResultRepoLocations(locationsList: locations);
    } catch (error) {
      print("Error: $error");
      return ResultRepoLocations(
        errorMessage: 'Something went wrong', //  пакета локализации
      );
    }
  }
}

class ResultRepoLocations {
  ResultRepoLocations({
    this.errorMessage,
    this.locationsList,
  });
  late final String? errorMessage;
  final List<Location>? locationsList;
}
