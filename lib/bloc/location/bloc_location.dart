import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repo/repo_locations.dart';
import '../../homscreenWidgets/location.dart';
import './states.dart';

part 'events.dart';

class BlocLocations extends Bloc<EventBlocLocations, StateBlocLocations> {
  BlocLocations({
    required this.repo,
  }) : super(const StateBlocLocations.initial()) {
    on<EventLocationsFilterByName>(
      (event, emit) async {
        emit(StateBlocLocations.loding());
        final result = await repo.filterByName(event.name);
        if (result.errorMessage != null) {
          emit(
            StateBlocLocations.error(result.errorMessage!),
          );
          return;
        }
        emit(
          StateBlocLocations.data(data: result.locationsList!),
        );
      },
    );
  }
  final RepoLocations repo;
}
