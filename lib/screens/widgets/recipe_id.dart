import 'package:flutter/material.dart';
import 'package:test_project/model/model.dart';

class RecipeId extends StatelessWidget {
  const RecipeId({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.green,
      child: Text(
        '${recipe.id}',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}