import 'package:flutter/material.dart';

class MyAppBarWidget extends StatelessWidget {
  const MyAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            color: Colors.blueAccent,
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          Column(
            children: [
              const Text(
                "Current Location",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_pin,
                      color: Colors.blue,
                    ),
                    Text(
                      "Denpasar, Bali",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(30),
              child: Image.asset("images/avatar/memoji.jpg", fit: BoxFit.fill),
            )
          )
        ],
      ),
    );
  }
}