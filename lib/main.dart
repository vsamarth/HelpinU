import 'package:flutter/material.dart';
import 'package:helpin_u/route_generator.dart';
import 'package:helpin_u/services/auth_bloc/bloc.dart';
import 'package:helpin_u/services/db_bloc/db_bloc.dart';
import 'package:helpin_u/services/nav_bloc/nav_bloc.dart';

import 'views/views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<NavigatorBloc>(
          create: (context) => NavigatorBloc(navigatorKey: _navigatorKey),
        ),
        BlocProvider<DbBloc>(
          create: (context) => DbBloc(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        home: const Wrapper(),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEventInitialize());

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthStateLoggedOut) {
          return const Login();
        } else if (state is AuthStateVolunteerLoggedIn) {
          return const VolunteerProfile();
        } else if (state is AuthStateOrgLoggedIn) {
          return const OrgProfile();
        } else if (state is AuthStateRegister) {
          return const Register();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
