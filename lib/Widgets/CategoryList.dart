import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 180, left: 20, right: 20, bottom: 100),
      height: MediaQuery.of(context).size.height - 630,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(150, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            onPressed: () {}, 
            child: const Text(
              "Mountain",
              style: TextStyle(
                fontSize: 18
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              onPressed: () {}, 
              child: const Text(
                "Mountain",
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              onPressed: () {}, 
              child: const Text(
              "Mountain",
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              onPressed: () {}, 
              child: const Text(
              "Mountain",
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              onPressed: () {}, 
              child: const Text(
              "Mountain",
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}


