import 'package:flutter/material.dart';
import 'package:meals_app/screeen/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({Key? key}) : super(key: key);

  final String title;
  final Color color;
  final String id;
  CategoryItem(
    this.title,
    this.color,
    this.id,
  );

  void selectCategory(BuildContext context, String id) {
    Navigator.of(context).pushNamed('/category-meals', arguments: {
      'title': title,
      'id': id,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context, this.id),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.5), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
