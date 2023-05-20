import 'package:flutter/material.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        width: 350,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Image.asset("images/recommended/d2.jpg", fit: BoxFit.cover),
            Positioned(
              bottom: 20,
              left: 30,
              width: 290,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: const [
                      Text(
                        "Rinjani Mountain", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Spacer(),
                      Text(
                        "48 Dollars",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 290,
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_pin,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Lombok, Indonesia",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "/Hours",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            )
          ]
        ),
      )
    );
  }
}


