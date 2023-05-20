import 'package:flutter/material.dart';

import 'RecommendCard.dart';

class RecommendCardList extends StatelessWidget {
  const RecommendCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        InkWell(
          onTap: () => print("tapped"),
          child: const RecommendCard(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () => print("tapped"),
            child: const RecommendCard(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () => print("tapped"),
            child: const RecommendCard(),
          ),
        )
      ],
    );
  }
}