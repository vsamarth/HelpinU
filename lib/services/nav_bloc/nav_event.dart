part of 'nav_bloc.dart';

abstract class NavEvent {
  const NavEvent();
}

/// {@template custom_nav_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomNavEvent extends NavEvent {}
