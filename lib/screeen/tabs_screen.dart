import 'package:flutter/material.dart';
import 'package:meals_app/screeen/categories_screen.dart';
import 'package:meals_app/screeen/favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Deli Meals'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'favourites',
                )
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
          ]),
        ));
  }
}
