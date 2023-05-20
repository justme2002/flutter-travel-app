import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, left: 20, right: 20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow> [
          BoxShadow(
            spreadRadius: 8,
            blurStyle: BlurStyle.outer,
            blurRadius: 10,
            color: Colors.blue.shade400,
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/popular/pink-beach.jpg",
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "The Pink Beach",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue.shade400,
                      ),
                      Text(
                        "Komodo island, Indonesia",
                        style: TextStyle(
                          color: Colors.blue.shade400
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width - 240,
                  child: const Text(
                    "The exceptional beach get its striking colors from microscopic animals called",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}