import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/categoryItem.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeals')),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (categoryData) => CategoryItem(
                categoryData.id,
                categoryData.title,
                categoryData.color,
              ),
            )
            .toList(),
      ),
    );
  }
}
