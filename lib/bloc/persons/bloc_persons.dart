import '../../repo/repo_persons.dart';
import '../../homscreenWidgets/person.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './states.dart';

part './events.dart';

class BlocPersons extends Bloc<EventBlocPersons, StateBlocPersons> {
  BlocPersons({
    required this.repo,
  }) : super(const StateBlocPersons.initial()) {
    on<EventPersonsFilterByName>(
      (event, emit) async {
        emit(StateBlocPersons.loding());
        final result = await repo.filterByName(event.name);
        if (result.errorMessage != null) {
          emit(
            StateBlocPersons.error(result.errorMessage!),
          );
          return;
        }
        emit(
          StateBlocPersons.data(data: result.personsList!),
        );
      },
    );
  }
  final RepoPersons repo;
}
