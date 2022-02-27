import 'package:flutter/material.dart';

import '../Data/meal.dart';
import '../Widget/meal_item.dart';

class FavScreen extends StatefulWidget {
  List<Meal> list;
  FavScreen(this.list);

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.list.isEmpty) {
      return const Center(
        child: Text('No Favorites'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              MealItem(
                id: widget.list[index].id,
                title: widget.list[index].title,
                affordability: widget.list[index].affordability,
                complexity: widget.list[index].complexity,
                duration: widget.list[index].duration,
                imageUrl: widget.list[index].imageUrl,
              ),
            ],
          );
        },
        itemCount: widget.list.length,
      );
    }
  }
}
