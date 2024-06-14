import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key,});


  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectPageIndex = 0;
  final List<Meal> _favouriteMeals = [];

  void _toggleMealFavouriteStatus(Meal meal)
  {
    final isExisting = _favouriteMeals.contains(meal);
    if(isExisting)
    {
      setState(() {
        _favouriteMeals.remove(meal);
      });
    }
    else
    {
      setState(() {
        _favouriteMeals.add(meal);
      });
    }
  }

  void _selectPage(int index) {

      _selectPageIndex = index;
  
  }

  @override
  Widget build(BuildContext context) {
    var activePageTitle = 'Categories';
    Widget activePage = CategoryScreen(onToggleFavourite: _toggleMealFavouriteStatus,);
    if (_selectPageIndex == 1) { 
      activePage = MealsScreen(
        onToggleFavourite: _toggleMealFavouriteStatus,
        meals: [],
      );
      activePageTitle = 'Your Favourites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectPage(index);
        },
        currentIndex: _selectPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
