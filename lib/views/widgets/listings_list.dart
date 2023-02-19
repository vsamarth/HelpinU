import 'package:flutter/material.dart';
import 'package:helpin_u/models/listing_model.dart';

class ListingList extends StatelessWidget {
  final List<ListingModel> listings;
  const ListingList({super.key, required this.listings});

  @override
  Widget build(BuildContext context) {
    //TODO: UI improvements
    final listingsList = listings;
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
