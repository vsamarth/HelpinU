part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventVolunteerLogin extends AuthEvent {
  final String email;
  final String password;
  const AuthEventVolunteerLogin({
    required this.email,
    required this.password,
  }) : super();
}

class AuthEventOrgLogin extends AuthEvent {
  final String email;
  final String password;
  const AuthEventOrgLogin({
    required this.email,
    required this.password,
  }) : super();
}

class AuthEventVolunteerRegister extends AuthEvent {
  final String name;
  final String email;
  final String password;

  const AuthEventVolunteerRegister({
    required this.email,
    required this.password,
    required this.name,
  }) : super();
}

class AuthEventOrgRegister extends AuthEvent {
  final String name;
  final String email;
  final String password;
  const AuthEventOrgRegister({
    required this.email,
    required this.password,
    required this.name,
  }) : super();
}

class AuthEventLogout extends AuthEvent {
  const AuthEventLogout() : super();
}

class AuthEventVolunteerLoggedIn extends AuthEvent {
  const AuthEventVolunteerLoggedIn() : super();
}

class AuthEventOrgLoggedIn extends AuthEvent {
  const AuthEventOrgLoggedIn() : super();
}

class AuthEventError extends AuthEvent {
  const AuthEventError() : super();
}
