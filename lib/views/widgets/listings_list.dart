import 'package:flutter/material.dart';
import 'package:helpin_u/constants/dummy_data.dart';

class ListingList extends StatelessWidget {
  const ListingList({super.key});

  @override
  Widget build(BuildContext context) {
    final listingsList = DummyListings.listings;
    final height =
        MediaQuery.of(context).size.height * listingsList.length * 0.165;
    return SizedBox(
        height: height * 0.65,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(listingsList[index].title),
                subtitle: Text(listingsList[index].description),
                trailing: Text(listingsList[index].datePosted),
                onTap: () {},
              ),
            );
          },
          itemCount: listingsList.length,
        ));
  }
}
