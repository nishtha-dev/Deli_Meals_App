import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/meal-details-screen';
  @override
  Widget build(BuildContext context) {
    final mealInfo =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final mealTitle = mealInfo['title'];
    final mealId = mealInfo['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealTitle'),
      ),
      body: Column(
        children: [
          //Image.network(''),
          Text('details- $mealId'),
        ],
      ),
    );
  }
}
