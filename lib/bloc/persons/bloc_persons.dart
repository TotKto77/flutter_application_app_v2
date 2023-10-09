import '../../repo/repo_persons.dart';
import '../../homscreenWidgets/person.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part './events.dart';
part './states.dart';

class BlocPersons extends Bloc<EventBlocPersons, StateBlocPersons> {
  BlocPersons({
    required this.repo,
  }) : super(StatePersonsInitial()) {
    on<EventPersonsFilterByName>(
      (event, emit) async {
        emit(StatePersonsLoading());
        final result = await repo.filterByName(event.name);
        if (result.errorMessage != null) {
          emit(
            StatePersonsError(result.errorMessage!),
          );
          return;
        }
        emit(
          StatePersonsData(data: result.personsList!),
        );
      },
    );
  }
  final RepoPersons repo;
}
