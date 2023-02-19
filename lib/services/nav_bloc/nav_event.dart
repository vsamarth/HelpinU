part of 'nav_bloc.dart';

abstract class NavEvent {
  const NavEvent();
}

/// {@template custom_nav_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomNavEvent extends NavEvent {}

class NavigatorActionPop extends NavEvent {}

class NavigateToVolunteerProfileEvent extends NavEvent {}

class NavigateToOrgProfileEvent extends NavEvent {}

class NavigateToVolunteerHomeEvent extends NavEvent {}

class NavigateToCreateListingEvent extends NavEvent {}

class NavigateToViewListingsEvent extends NavEvent {}
