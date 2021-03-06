import 'package:flutter/material.dart';
import 'package:meals_app/screeen/categories_screen.dart';
import 'package:meals_app/screeen/category_meals_screen.dart';
import 'package:meals_app/screeen/filters_screen.dart';
import 'package:meals_app/screeen/meal_details_screen.dart';
import 'package:meals_app/screeen/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ))),
      //home: CategoriesScreen(),
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen(),
      },
      // onGenerateRoute: (RouteSettings) {
      //   print(RouteSettings.arguments);
      //   if(RouteSettings.name=='/meal-details-screen')
      //   {
      //     return
      //   }
      //   return MaterialPageRoute(builder: (ctx)=> CategoryMealsScreen());
      // },
    );
  }
}
