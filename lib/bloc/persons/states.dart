part of 'bloc_persons.dart';

abstract class StateBlocPersons {}

class StatePersonsInitial extends StateBlocPersons {}

class StatePersonsLoading extends StateBlocPersons {}

class StatePersonsData extends StateBlocPersons {
  StatePersonsData({
    required this.data,
  });

  final List<Person> data;
}

class StatePersonsError extends StateBlocPersons {
  StatePersonsError(this.error);

  final String error;
}
