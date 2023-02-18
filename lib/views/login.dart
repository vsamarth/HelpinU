import 'package:flutter/material.dart';
import 'package:helpin_u/constants/constants.dart';

import '../services/auth_bloc/bloc.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';
  List<Widget> userType = <Widget>[
    const Text('Volunteer'),
    const Text('Organization')
  ];

  final List<bool> isSelected = <bool>[true, false];

  bool vertical = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            direction: vertical ? Axis.vertical : Axis.horizontal,
            onPressed: (int index) {
              setState(() {
                // The button that is tapped is set to true, and the others to false.
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = i == index;
                }
              });
            },
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            selectedBorderColor: Colors.red[700],
            selectedColor: Colors.white,
            fillColor: kSecondaryColor,
            constraints: BoxConstraints(
              minHeight: 40.0,
              minWidth: MediaQuery.of(context).size.width * 0.4,
            ),
            isSelected: isSelected,
            children: userType,
          ),

          const SizedBox(height: 30),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              cursorColor: Colors.grey,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(
                  hintText: "Email",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: kSecondaryColor))),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: const InputDecoration(
                hintText: "Password",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kSecondaryColor)),
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          // add a login button
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      isSelected[0]
                          ? AuthEventVolunteerLogin(
                              email: email,
                              password: password,
                            )
                          : AuthEventOrgLogin(
                              email: email,
                              password: password,
                            ),
                    );
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
