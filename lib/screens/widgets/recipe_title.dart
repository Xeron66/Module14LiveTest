import 'package:flutter/material.dart';
import 'package:test_project/model/model.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Text(
      recipe.title ?? 'Unknown Title!',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}