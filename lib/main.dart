import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'deliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),),
          body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),),
          title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensesd', fontWeight: FontWeight.bold)),
      ),
//      home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen()
      }
    );
  }
}