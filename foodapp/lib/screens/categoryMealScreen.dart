import 'package:flutter/material.dart';
import '../widgets/mealItem.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/Categories-Meals';
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen(
  //   this.categoryId,
  //   this.categoryTitle,
  // );
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryMeals = DUMMY_MEALS.where(
      (meals) {
        return meals.categories.contains(routeArgs['id']);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imgURl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
