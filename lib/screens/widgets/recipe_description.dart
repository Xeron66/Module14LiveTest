import 'package:flutter/material.dart';
import 'package:test_project/model/model.dart';

class RecipeDescription extends StatelessWidget {
  const RecipeDescription({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Text(
      recipe.description ?? 'Unknown Description',
      style: const TextStyle(fontWeight: FontWeight.normal),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}