import 'package:flutter/material.dart';
import 'package:multi_screen/Data/dummy_data.dart';
import 'package:multi_screen/Data/meal.dart';
import 'package:multi_screen/Widget/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  List<Meal> list;
  CategoryMealsScreen(this.list, {Key? key}) : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late String title;
  late List<Meal> displayMeal;
  bool loadedinitdata = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!loadedinitdata) {
      final routeArgs = ModalRoute.of(context)?.settings.arguments as Map;

      String id = routeArgs['id'];
      title = routeArgs['title'];

      displayMeal = widget.list.where((element) {
        return element.categories.contains(id);
      }).toList();
      loadedinitdata = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              MealItem(
                id: displayMeal[index].id,
                title: displayMeal[index].title,
                affordability: displayMeal[index].affordability,
                complexity: displayMeal[index].complexity,
                duration: displayMeal[index].duration,
                imageUrl: displayMeal[index].imageUrl,
              ),
            ],
          );
        },
        itemCount: displayMeal.length,
      ),
    );
  }
}
