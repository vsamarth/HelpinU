import 'package:flutter/material.dart';
import 'package:helpin_u/constants/constants.dart';
import 'package:helpin_u/services/auth_bloc/bloc.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = '';
  String name = '';
  String password = '';
  String confirmPassword = '';

  List<Widget> userType = <Widget>[
    const Text('Volunteer'),
    const Text('Organization')
  ];

  final List<bool> isSelected = <bool>[true, false];

  bool vertical = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // add a text
        const Text(
          "Register",
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 40,
        ),

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
            keyboardType: TextInputType.name,
            onChanged: (value) {
              name = value;
            },
            decoration: const InputDecoration(
                hintText: "Name of volunteer / organization",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kSecondaryColor))),
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
                    borderSide: BorderSide(width: 2, color: kSecondaryColor))),
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
                    borderSide: BorderSide(width: 2, color: kSecondaryColor))),
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
              confirmPassword = value;
            },
            decoration: const InputDecoration(
              hintText: "Confirm Password",
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
          height: 40,
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {
              if (password == confirmPassword) {
                context.read<AuthBloc>().add(isSelected[0]
                    ? AuthEventVolunteerRegister(
                        email: email, password: password, name: name)
                    : AuthEventOrgRegister(
                        email: email, password: password, name: name));
              }
            },
            child: const Text(
              "Submit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
