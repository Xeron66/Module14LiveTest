# 🍲 Module 14 Live Test - Recipe List App

A Flutter application developed as a live coding assessment. This project demonstrates the parsing of JSON data to display a list of recipes using a clean **MVC (Model-View-Controller)** architecture and a highly **modular component-based UI**.

## 🚀 Key Features

* **JSON Parsing:** converting raw JSON string data into Dart Objects.
* **MVC Architecture:** Strict separation of logic (Controller), data (Model), and UI (Screens).
* **Modular Widget Design:** The UI is broken down into atomic widgets for maximum reusability and readability.
* **Clean State Management:** Uses `setState` effectively within the Controller-View flow.

## 📂 Project Structure

The project follows a strict directory structure to maintain code scalability:

```text
lib/
├── controller/
│   └── recipe_controller.dart      # Logic for fetching and parsing JSON
├── model/
│   └── model.dart                  # Data model for Recipe
├── screens/
│   ├── widgets/                    # Modularized atomic widgets
│   │   ├── recipe_card.dart        # Parent card component
│   │   ├── recipe_id.dart          # Component for ID display
│   │   ├── recipe_title.dart       # Component for Title display
│   │   ├── recipe_description.dart # Component for Description
│   │   └── recipe_calories.dart    # Component for Calorie count
│   └── home_screen.dart            # Main screen displaying the ListView
└── main.dart                       # Entry point
```

## 🛠 Architectural Approach

1. MVC Pattern  
   The app is separated into three layers:

   - **Model:** Defines the structure of the Recipe object.  
   - **Controller:** Handles the business logic, specifically the `fetchRecipes` method which parses the JSON data.  
   - **View (Screens):** Only handles the UI rendering.

2. Atomic Widget Design  
   To ensure code reusability and cleaner render methods, the `RecipeCard` was further atomized.  
   Instead of a large block of code, the card is composed of smaller, independent widgets.
   ```dart
    // Example of the modular composition used in this project
    ListTile(
      leading: RecipeId(recipe: recipe),
      title: RecipeTitle(recipe: recipe),
      subtitle: RecipeDescription(recipe: recipe),
      trailing: RecipeCalories(recipe: recipe),
    )
   ```
3. Screenshot
   <p align="center">
   <img width="368" height="741" alt="image" src="https://github.com/user-attachments/assets/73ce6a3d-4d36-4ec6-aa0c-202edbb05579" />
    <br>
    <em>Fig: Screenshot of the app.</em>
   </p>
   
## 🏁 Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/Xeron66/Module14LiveTest.git
   ```
2. Navigate to the project directory:
   ```dart
   cd Module14LiveTest
   ```
3. Install dependencies:
   ```dart
   flutter pub get
   ```
4. Run the app:
   ```dart
   flutter run
   ```

