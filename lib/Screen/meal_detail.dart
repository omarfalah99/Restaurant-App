import 'package:flutter/material.dart';
import 'package:multi_screen/Data/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const MealDetailScreenName = '/mealDetailScreen';

  final Function function;
  final Function fav;
  MealDetailScreen(this.function, this.fav);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as String;

    final selectedMeal = DUMMY_MEALS.firstWhere((element) {
      return element.id == id;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'Ingredients',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: 200,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Text(selectedMeal.ingredients[index]),
                );
              },
              itemCount: selectedMeal.ingredients.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          function(id);
        },
        child: Icon(fav(id) ? Icons.star : Icons.star_border),
      ),
    );
  }
}
