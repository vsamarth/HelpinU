import 'package:flutter/material.dart';
import 'package:helpin_u/services/auth_bloc/bloc.dart';
import 'package:helpin_u/services/nav_bloc/nav_bloc.dart';
import 'package:helpin_u/views/login.dart';
import 'package:helpin_u/views/register.dart';
import 'package:helpin_u/views/volunteer_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(),
          ),
          BlocProvider<NavBloc>(
            create: (context) => NavBloc(),
          ),
        ],
        child: const VolunteerHome(),
      ),
    );
  }
}

