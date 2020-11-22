import 'package:flutter/material.dart';
import 'package:foodapp/dummy_data.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context).settings.arguments;
    final Meal meal = DUMMY_MEALS.firstWhere((meals) => meals.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(meal.imageUrl),
          ),
        ],
      ),
    );
  }
}
