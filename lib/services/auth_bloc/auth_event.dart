part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventVolunteerLogin extends AuthEvent {
  const AuthEventVolunteerLogin() : super();
}

class AuthEventOrgLogin extends AuthEvent {
  const AuthEventOrgLogin() : super();
}

class AuthEventVolunteerRegister extends AuthEvent {
  const AuthEventVolunteerRegister() : super();
}

class AuthEventOrgRegister extends AuthEvent {
  const AuthEventOrgRegister() : super();
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
