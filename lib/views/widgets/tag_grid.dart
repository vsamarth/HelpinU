import 'package:flutter/material.dart';
import 'package:helpin_u/constants/tags.dart';
import 'package:helpin_u/views/widgets/discover_card.dart';

class TagGrid extends StatelessWidget {
  const TagGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const tagList = Tags.values;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return DiscoverCard(
          title: tagList[index].info,
          subtitle: null,
          gradientStartColor: tagList[index].gradientStartColor,
          gradientEndColor: tagList[index].gradientEndColor,
        );
      },
      itemCount: tagList.length,
    );
  }
}
