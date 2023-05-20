import 'package:flutter/material.dart';

class HeaderBarWidget extends StatelessWidget {
  final String title;
  final double top;
  final double bottom;
  final double left;
  final double right;
  const HeaderBarWidget({
    required this.title,
    required this.top,
    required this.left,
    required this.right,
    required this.bottom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
          ),
          ElevatedButton(
            onPressed: () {}, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>((Colors.transparent)),
              shadowColor: MaterialStateProperty.all<Color>(Colors.transparent)
            ),
            child: Row(
              children: const [
                Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.blueAccent
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.blueAccent,
                ),
              ],
            )
          )
        ],
      )
    );
  }
}