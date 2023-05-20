import 'package:flutter/material.dart';
import 'Screens/Home.dart';
import 'Screens/Screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {

  int selectedIndex = 0;

  List<Widget> screens = [
    const Home(),
    const Screen2()
  ];

  _MyApp();

  void setSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      title: 'Material App',
      home: Scaffold(
        body: screens.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setSelectedIndex(index);
          },
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            )
          ],
        ),
      ),
    );
  }
}

