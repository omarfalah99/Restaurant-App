import 'package:flutter/material.dart';
import 'package:multi_screen/Widget/category_item.dart';
import 'package:multi_screen/Data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2),
      children: [
        ...DUMMY_CATEGORIES.map((e) {
          return CategoryItem(
            e.id,
            e.title,
            e.color,
          );
        }).toList(),
      ],
    );
  }
}
