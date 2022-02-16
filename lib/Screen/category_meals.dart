import 'package:flutter/material.dart';
import 'package:multi_screen/Data/dummy_data.dart';
import 'package:multi_screen/Widget/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);
  static const routeName = '/category-meals';

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map;

    String id = routeArgs['id'];
    String title = routeArgs['title'];

    final categoryMeals = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              MealItem(
                  id: categoryMeals[index].id,
                  title: categoryMeals[index].title,
                  affordability: categoryMeals[index].affordability,
                  complexity: categoryMeals[index].complexity,
                  duration: categoryMeals[index].duration,
                  imageUrl: categoryMeals[index].imageUrl, removeItem: (){

              },),
            ],
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
