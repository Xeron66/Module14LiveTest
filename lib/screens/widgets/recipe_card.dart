import 'package:flutter/material.dart';
import 'package:test_project/model/model.dart';
import 'package:test_project/screens/widgets/recipe_calories.dart';
import 'package:test_project/screens/widgets/recipe_description.dart';
import 'package:test_project/screens/widgets/recipe_id.dart';
import 'package:test_project/screens/widgets/recipe_title.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: ListTile(
        // here each elements are each widgets
        // my main idea is to make things as much modular as possible!
        // thats why each of these are different widgets with a class!
        leading: RecipeId(recipe: recipe),
        title: RecipeTitle(recipe: recipe),
        subtitle: RecipeDescription(recipe: recipe),
        trailing: RecipeCalories(recipe: recipe),
      ),
    );
  }
}