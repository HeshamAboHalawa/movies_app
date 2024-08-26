import 'package:flutter/material.dart';
import 'colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black45,

      bottomNavigationBar: BottomAppBar(
        color: Colors.black45,
        notchMargin: 8,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.secondary,
          unselectedItemColor: AppColors.grey,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "SEARCH"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "BROWSE"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "WATCHLIST"),
          ],
        ),
      ),
    );
  }
}
