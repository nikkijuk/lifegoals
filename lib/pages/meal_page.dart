import 'package:flutter/material.dart';
import 'package:lifegoals/models/meal.dart';
import 'package:lifegoals/widgets/meal_detail.dart';

class MealPage extends StatelessWidget {
  final Meal meal;

  const MealPage({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: MealDetail(
        meal: meal,
      ),
    );
  }
}
