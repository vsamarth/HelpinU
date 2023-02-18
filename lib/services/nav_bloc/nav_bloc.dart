import 'dart:async';

import 'package:bloc/bloc.dart';
part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(const NavInitial()) {
    on<CustomNavEvent>(_onCustomNavEvent);
  }

  FutureOr<void> _onCustomNavEvent(
    CustomNavEvent event,
    Emitter<NavState> emit,
  ) {
    // TODO: Add Logic
  }
}
