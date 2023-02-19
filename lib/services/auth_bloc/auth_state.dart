part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial() : super();
}

class AuthStateVolunteerLoggedIn extends AuthState {
  const AuthStateVolunteerLoggedIn() : super();
}

class AuthStateOrgLoggedIn extends AuthState {
  const AuthStateOrgLoggedIn() : super();
}

class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut() : super();
}

class AuthStateRegister extends AuthState {
  const AuthStateRegister() : super();
}
