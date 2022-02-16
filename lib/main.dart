import 'package:flutter/material.dart';
import 'package:multi_screen/Screen/categories_screen.dart';
import 'package:multi_screen/Screen/category_meals.dart';
import 'package:multi_screen/Screen/filter_screen.dart';
import 'package:multi_screen/Screen/meal_detail.dart';

import 'Screen/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Gloria',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.MealDetailScreenName: (context) => MealDetailScreen(),
        FilterScreen.routeName : (context) => FilterScreen(),
      },
    );
  }
}
