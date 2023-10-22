part of 'bloc_location.dart';

abstract class EventBlocLocations {}

class EventLocationsFilterByName extends EventBlocLocations {
  EventLocationsFilterByName(this.name);
  final String name;
}
