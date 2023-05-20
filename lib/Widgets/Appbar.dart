import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: const Icon(Icons.menu_outlined), onPressed: () {  },),
      title: Container(
        alignment: Alignment.center,
        child: const Text("Hello"),
      ),
    );
  }
}