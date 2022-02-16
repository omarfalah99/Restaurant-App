import 'package:flutter/material.dart';
import 'package:multi_screen/Screen/categories_screen.dart';
import 'package:multi_screen/Screen/favourite_screen.dart';
import 'package:multi_screen/Widget/drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List widgets = [const CategoriesScreen(), const FavScreen()];

  int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: mainDrawer(),
      appBar: AppBar(
        title:
            selectedIndex == 0 ? const Text('Meals') : const Text('Favourite'),
      ),
      body: widgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.category),
              label: 'Category'),
          BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.favorite),
              label: 'Favourite'),
        ],
      ),
    );
  }
}
