import 'package:flutter/material.dart';
import 'package:helpin_u/constants/constants.dart';
import 'package:helpin_u/constants/dummy_data.dart';
import 'package:helpin_u/views/widgets/listings_list.dart';

import '../services/nav_bloc/bloc.dart';

class ViewListings extends StatelessWidget {
  const ViewListings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: dbBloc listings
    final dummyListings = DummyListings.listings;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        title: const Text(
          'HelpinU',
          style: TextStyle(
              fontFamily: "Poppins",
              color: kTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          //add text
          IconButton(
            icon: const Icon(
              Icons.person_outline_rounded,
              color: kTextColor,
              size: 25,
            ),
            onPressed: () {
              BlocProvider.of<NavigatorBloc>(context).add(
                NavigateToOrgProfileEvent(),
              );
            },
          ),

          const Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: ListingList(listings: dummyListings),
    );
  }
}
