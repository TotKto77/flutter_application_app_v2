part of 'bloc_persons.dart';

abstract class EventBlocPersons {}

class EventPersonsFilterByName extends EventBlocPersons {
  EventPersonsFilterByName(this.name);
  final String name;
}
