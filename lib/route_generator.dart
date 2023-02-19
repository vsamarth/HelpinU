import 'package:flutter/material.dart';
import 'package:helpin_u/views/views.dart';

class RouteGenerator {
  static const String volunteerHome = '/volunteer';
  static const String volunteerProfile = '/profile';
  static const String orgProfile = '/orgProfile';
  static const String createListing = '/createListing';
  static const String viewListings = '/viewListings';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case volunteerHome:
        return MaterialPageRoute(builder: (_) => const VolunteerHome());

      case volunteerProfile:
        return MaterialPageRoute(builder: (_) => const VolunteerProfile());
      case orgProfile:
        return MaterialPageRoute(builder: (_) => const OrgProfile());
      case createListing:
        return MaterialPageRoute(builder: (_) => const CreateListing());
      case viewListings:
        return MaterialPageRoute(builder: (_) => const ViewListings());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('404 Route Not Found'),
                  ),
                ));
    }
  }
}
