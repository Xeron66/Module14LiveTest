
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:test_project/model/model.dart';

// This is our actual controller where the data are being stored
// its kind of emulating an api response!
class RecipeController {
  // function to fetch the recipes
  // using context in parameters cause we are using snackbar and snackbar needs 
  // context!
  List<Recipe> fetchRecipes (BuildContext context) {
    String jsonString = '''
    [
      { "id": 1, "title": "Chicken Biryani", "description": "Aromatic basmati rice cooked with spiced chicken.", "calories": 550 },
      { "id": 2, "title": "Beef Curry", "description": "Slow-cooked beef in a rich curry gravy.", "calories": 620 },
      { "id": 3, "title": "Vegetable Khichuri", "description": "Rice and lentils cooked with mixed vegetables.", "calories": 400 },
      { "id": 4, "title": "Pasta Alfredo", "description": "Creamy white sauce pasta with parmesan cheese.", "calories": 480 },
      { "id": 5, "title": "Grilled Sandwich", "description": "Toasted sandwich filled with cheese and vegetables.", "calories": 310 },
      { "id": 6, "title": "Chicken Fry", "description": "Crispy deep-fried chicken with spices.", "calories": 530 },
      { "id": 7, "title": "Egg Curry", "description": "Boiled eggs cooked in masala gravy.", "calories": 450 },
      { "id": 8, "title": "Fruit Salad", "description": "Mixed seasonal fruits served chilled.", "calories": 250 },
      { "id": 9, "title": "Fried Rice", "description": "Rice fried with vegetables, egg, and soy sauce.", "calories": 500 },
      { "id": 10, "title": "Mango Lassi", "description": "Sweet yogurt drink blended with ripe mango.", "calories": 300 }
    ]
    ''';
    // using try block to catch if there are any errors!
    // if we do find any then we show it in a snackbar
    try {
      List <dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((json) => Recipe.fromJson(json)).toList();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error Parsing JSON: $e')));
      return [];
    }
  } 
}
