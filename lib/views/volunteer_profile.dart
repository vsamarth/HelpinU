import 'package:flutter/material.dart';
import 'package:helpin_u/constants/constants.dart';
import 'package:helpin_u/constants/dummy_data.dart';
import 'package:helpin_u/models/volunteer_model.dart';
import 'package:helpin_u/services/auth_bloc/bloc.dart';
import 'package:helpin_u/services/db_bloc/db_bloc.dart';
import 'package:helpin_u/services/nav_bloc/bloc.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../constants/tags.dart';

class VolunteerProfile extends StatefulWidget {
  const VolunteerProfile({super.key});

  @override
  State<VolunteerProfile> createState() => _VolunteerProfileState();
}

// TODO: UI consistency

class _VolunteerProfileState extends State<VolunteerProfile> {
  bool _isEditing = false;
  double _distanceToField = 0;

  late TextfieldTagsController _controller;
  late TextEditingController _nameController;
  late TextEditingController _bioController;

  @override
  void initState() {
    _controller = TextfieldTagsController();
    _nameController = TextEditingController();
    _bioController = TextEditingController();
    //TODO: dbBloc pass user data
    _nameController.text = DummyVolunteers.volunteers[0].name;
    _bioController.text = DummyVolunteers.volunteers[0].bio;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    final VolunteerModel volunteer = DummyVolunteers.volunteers[0];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        title: const Text(
          'HelpingU',
          style: TextStyle(
              fontFamily: "Poppins",
              color: kTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home_outlined,
              color: kTextColor,
              size: 25,
            ),
            onPressed: () {
              BlocProvider.of<NavigatorBloc>(context).add(
                NavigateToVolunteerHomeEvent(),
              );
            },
          ),
          const Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                'Profile',
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              _isEditing
                  ? TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    )
                  : Text(
                      volunteer.name,
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                'Bio',
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              _isEditing
                  ? TextField(
                      controller: _bioController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Bio',
                      ),
                    )
                  : Text(volunteer.bio),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                'Email',
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Text(volunteer.email),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                'Interests',
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              _isEditing
                  ? SizedBox(
                      // width: width * 0.7,
                      child: TextFieldTags(
                        textfieldTagsController: _controller,
                        initialTags: const [
                          'pick',
                        ],
                        textSeparators: const [' ', ','],
                        letterCase: LetterCase.normal,
                        validator: (String tag) {
                          return null;
                        },
                        inputfieldBuilder:
                            (context, tec, fn, error, onChanged, onSubmitted) {
                          return ((context, sc, tags, onTagDelete) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: tec,
                                focusNode: fn,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kSecondaryColor,
                                      width: 3.0,
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kSecondaryColor,
                                      width: 3.0,
                                    ),
                                  ),
                                  hintText:
                                      _controller.hasTags ? '' : "Enter tag...",
                                  errorText: error,
                                  prefixIconConstraints: BoxConstraints(
                                      maxWidth: _distanceToField * 0.7),
                                  prefixIcon: tags.isNotEmpty
                                      ? SingleChildScrollView(
                                          controller: sc,
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                              children: tags.map((String tag) {
                                            return Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0),
                                                ),
                                                color: kSecondaryColor,
                                              ),
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5.0),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 5.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    child: Text(
                                                      tag,
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    onTap: () {
                                                      // print("$tag selected");
                                                    },
                                                  ),
                                                  const SizedBox(width: 4.0),
                                                  InkWell(
                                                    child: const Icon(
                                                      Icons.cancel,
                                                      size: 14.0,
                                                      color: Color.fromARGB(
                                                          255, 233, 233, 233),
                                                    ),
                                                    onTap: () {
                                                      onTagDelete(tag);
                                                    },
                                                  )
                                                ],
                                              ),
                                            );
                                          }).toList()),
                                        )
                                      : null,
                                ),
                                onChanged: onChanged,
                                onSubmitted: onSubmitted,
                              ),
                            );
                          });
                        },
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (final Tags interest in volunteer.interests)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Chip(
                              label: Text(interest.info,
                                  style: const TextStyle(
                                      fontFamily: "Poppins", fontSize: 16)),
                            ),
                          ),
                      ],
                    ),
              const Padding(padding: EdgeInsets.only(top: 25)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                child: _isEditing
                    ? ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isEditing = !_isEditing;
                          });
                          //TODO: dbBloc
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kSecondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Save'),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isEditing = !_isEditing;
                          });
                          context.read<DbBloc>().add(
                                VolunteerUpdateEvent(
                                  volunteerId: volunteer.id,
                                  bio: _bioController.text == ''
                                      ? volunteer.bio
                                      : _bioController.text,
                                  //TODO: interests
                                ),
                              );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kSecondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Edit Profile'),
                      ),
              ),
              const Padding(padding: EdgeInsets.only(top: 25)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                // Logout button
                child: ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEventLogout());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Logout'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
