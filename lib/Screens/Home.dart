import 'package:flutter/material.dart';
import '../Widgets/HeaderBar.dart';
import '../Widgets/CategoryList.dart';
import '../Widgets/MyAppBar.dart';
import '../Widgets/PopularCard.dart';
import '../Widgets/RecommendCardList.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            const MyAppBarWidget(),
            const HeaderBarWidget(
              title: "Category",
              top: 120,
              bottom: 120,
              left: 20,
              right: 20,
            ),
            const CategoryListWidget(),
            Container(
              margin: const EdgeInsets.only(top: 270),
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height - 700,
              child: const RecommendCardList(),
            ),
            const HeaderBarWidget(
              title: "Popular Destination",
              top: 560,
              left: 20,
              right: 20,
              bottom: 0,
            ),
            Container(
              margin: const EdgeInsets.only(top: 620),
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: const [
                  PopularCard(),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: PopularCard(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: PopularCard(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: PopularCard(),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}



