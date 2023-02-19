import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial()) {
    on<AuthEventInitialize>(_onInitialize);
    on<AuthEventVolunteerLogin>(_onVolunteerLogin);
    on<AuthEventOrgLogin>(_onOrgLogin);
    on<AuthEventVolunteerRegister>(_onRegister);
    on<AuthEventLogout>(_onLogout);
    on<AuthEventVolunteerLoggedIn>(_onVolunteerLoggedIn);
    on<AuthEventOrgLoggedIn>(_onOrgLoggedIn);
    on<AuthEventError>(_onError);
  }

  void _onInitialize(
    AuthEventInitialize event,
    Emitter<AuthState> emit,
  ) {
    //? Change this to change initial page
    //TODO: change to provider initialization later
    emit(const AuthStateLoggedOut());
  }

  void _onVolunteerLogin(
    AuthEventVolunteerLogin event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateVolunteerLoggedIn());
  }

  void _onOrgLogin(
    AuthEventOrgLogin event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateOrgLoggedIn());
  }

  void _onRegister(
    AuthEventVolunteerRegister event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateRegister());
  }

  void _onLogout(
    AuthEventLogout event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateLoggedOut());
  }

  void _onVolunteerLoggedIn(
    AuthEventVolunteerLoggedIn event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateVolunteerLoggedIn());
  }

  void _onOrgLoggedIn(
    AuthEventOrgLoggedIn event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateOrgLoggedIn());
  }

  void _onError(
    AuthEventError event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateLoggedOut());
  }
}
