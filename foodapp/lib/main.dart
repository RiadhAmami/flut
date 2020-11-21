import 'package:flutter/material.dart';
import './widgets/categoriesScreen.dart';
import './widgets/categoryMealScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                body2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                title: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
        ),
        home: CategoriesScreen(),
        routes: {
          '/categories': (ctx) => CategoryMealsScreen(),
        });
  }
}