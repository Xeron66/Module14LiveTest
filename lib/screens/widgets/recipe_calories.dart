import 'package:flutter/material.dart';
import 'package:test_project/model/model.dart';

class RecipeCalories extends StatelessWidget {
  const RecipeCalories({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${recipe.calories} cal',
      style: const TextStyle(color: Colors.grey, fontSize: 16),
    );
  }
}