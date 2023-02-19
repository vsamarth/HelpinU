import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'nav_event.dart';
part 'nav_state.dart';

class NavigatorBloc extends Bloc<NavEvent, dynamic> {
  final GlobalKey<NavigatorState> navigatorKey;
  NavigatorBloc({required this.navigatorKey}) : super(0) {
    on<NavEvent>((event, emit) {
      if (event is NavigatorActionPop) {
        navigatorKey.currentState!.pop();
      } else if (event is NavigateToOrgProfileEvent) {
        navigatorKey.currentState!.pushNamed('/orgProfile');
      } else if (event is NavigateToVolunteerProfileEvent) {
        navigatorKey.currentState!.pushNamed('/profile');
      } else if (event is NavigateToVolunteerHomeEvent) {
        navigatorKey.currentState!.pushNamed('/volunteer');
      } else if (event is NavigateToCreateListingEvent) {
        navigatorKey.currentState!.pushNamed('/createListing');
      }
    });
  }
}
