import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'db_event.dart';
part 'db_state.dart';

class DbBloc extends Bloc<DbEvent, DbState> {
  DbBloc() : super(const DbInitial()) {
    on<CustomDbEvent>(_onCustomDbEvent);
  }

  FutureOr<void> _onCustomDbEvent(
    CustomDbEvent event,
    Emitter<DbState> emit,
  ) {
    // TODO: Add Logic
  }
}
