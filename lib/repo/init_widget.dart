import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/bloc/location/bloc_location.dart';
import 'package:flutter_application_app_v2/bloc/persons/bloc_persons.dart';
import 'package:flutter_application_app_v2/repo/api.dart';
import 'package:flutter_application_app_v2/repo/repo_locations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './repo_settings.dart';
import './repo_persons.dart';
import 'package:provider/provider.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => Api(),
        ),
        RepositoryProvider(
          create: (context) => RepoSettings(),
        ),
        RepositoryProvider(
          create: (context) => RepoSettings(),
        ),
        RepositoryProvider(
          create: (context) => RepoPersons(
            api: RepositoryProvider.of<Api>(context),
          ),
        )
      ],
      child: MultiProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocPersons(
              repo: RepositoryProvider.of<RepoPersons>(context),
            )..add(EventPersonsFilterByName('')),
          ),
          BlocProvider(
            create: (context) => BlocLocations(
              repo: RepositoryProvider.of<RepoLocations>(context),
            )..add(EventLocationsFilterByName('')),
          ),
        ],
        child: child,
      ),
    );
  }
}
