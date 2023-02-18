import 'package:flutter/material.dart';
import 'package:helpin_u/constants/tags.dart';
import 'package:helpin_u/views/widgets/discover_card.dart';

class TagGrid extends StatelessWidget {
  const TagGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const tagList = Tags.values;
    final height = MediaQuery.of(context).size.height * tagList.length / 10.65;
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.25,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            child: DiscoverCard(
              title: tagList[index].info,
              subtitle: null,
              gradientStartColor: tagList[index].gradientStartColor,
              gradientEndColor: tagList[index].gradientEndColor,
              // height: boxHeight,
              // width: boxWidth,
            ),
          );
        },
        itemCount: tagList.length,
      ),
    );
  }
}
