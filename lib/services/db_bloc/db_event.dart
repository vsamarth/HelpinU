part of 'db_bloc.dart';

abstract class DbEvent {
  const DbEvent();
}

/// {@template custom_db_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomDbEvent extends DbEvent {}
