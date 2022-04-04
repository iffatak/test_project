import 'package:flutter/material.dart';
import 'package:test_project/Modules/Home/screens/home_screen.dart';
import 'package:test_project/Utils/color_codes.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  List<Widget> items=[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  List<BottomNavigationBarItem> bottomItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.history),label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCodes.DARK_PURPLE_COLOR,
      body: items.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorCodes.DARK_PURPLE_COLOR,
        currentIndex: currentIndex,
        unselectedItemColor: ColorCodes.WHITE_COLOR,
        selectedItemColor: ColorCodes.PINK_COLOR,
        items: bottomItems,
        onTap: (itemIndex){
          setState(() {
            currentIndex = itemIndex;
          });
        },
      ),
    );
  }
}
