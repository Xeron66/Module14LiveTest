import 'package:flutter/material.dart';
import 'package:test_project/controller/recipe_controller.dart';
import 'package:test_project/model/model.dart';
import 'package:test_project/screens/widgets/recipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // initializing our Recipe Controller
  final RecipeController _recipeController = RecipeController();

  // taking an empty list to store the data from the controller
  List <Recipe> _recipes = [];

  // Loading the data from the controller to the empty list!
  void loadData () {
    setState(() {
      _recipes = _recipeController.fetchRecipes(context);
    });
  }

  @override
  void initState() {
    // loading the data at the start of the app life cycle!
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Recipe')),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        itemCount: _recipes.length,

        itemBuilder: (context, index) {
          final recipe = _recipes[index];
          // I have made the recipe card modular for code reuseability
          return RecipeCard(recipe: recipe);
        }
      ),
    );
  }
}









