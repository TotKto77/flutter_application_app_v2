import 'dart:convert';
//import 'dart:html';
import 'package:flutter_application_app_v2/repo/api.dart';

import '../homscreenWidgets/person.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart' as http;

class RepoPersons {
  RepoPersons({required this.api});
  final Api api;
  Future<ResultRepoPersons> filterByName(String name) async {
    try {
      final url =
          Uri.parse("https://rickandmortyapi.com/api/character/?name=$name");
      final result = await api.dio.get(
        '/character/',
        queryParameters: {
          "name": name,
        },
      );

      final List personsListJson = result.data['results'] ?? [];
      final personsList = personsListJson
          .map(
            (item) => Person.fromJsom(item),
          )
          .toList();
      return ResultRepoPersons(personsList: personsList);
    } catch (error) {
      print("Error: $error");
      return ResultRepoPersons(
        errorMessage: 'AppLocalization.current.somethingWentWrong',
      );
    }
  }
}

class ResultRepoPersons {
  ResultRepoPersons({
    this.errorMessage,
    this.personsList,
  });
  late final String? errorMessage;
  final List<Person>? personsList;
}
