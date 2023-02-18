import 'package:flutter/material.dart';

class VolunteerHome extends StatefulWidget {
  const VolunteerHome({Key? key}) : super(key: key);

  @override
  State<VolunteerHome> createState() => _VolunteerHomeState();
}

class _VolunteerHomeState extends State<VolunteerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volunteer Home'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text('Volunteer $index'),
              );
            })
          ],
        ),
      ),
    );
  }
}
