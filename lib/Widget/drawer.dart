import 'package:flutter/material.dart';
import 'package:multi_screen/Screen/category_meals.dart';
import 'package:multi_screen/Screen/filter_screen.dart';

class mainDrawer extends StatelessWidget {
  const mainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.amberAccent,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Cocking Up',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            leading: Icon(
              Icons.restaurant,
              color: Colors.black,
              size: 26,
            ),
            title: Text(
              'Meals',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            },
            leading: Icon(
              Icons.settings,
              color: Colors.black,
              size: 26,
            ),
            title: Text(
              'Filters',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
