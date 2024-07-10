import 'package:flutter/material.dart';
import 'models/recipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecipeListScreen(),
    );
  }
}


             // Recipe List

class RecipeListScreen extends StatefulWidget {
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {

  // I am using temprory data for now
  // We can also fetch this data from api


  List<Recipe> recipes = [
    Recipe(
      title: 'Spaghetti',
      description: 'A classic Italian pasta dish',
      ingredients: ['Pasta', 'Tomato Sauce', 'Parmesan'],
      instructions: ['Boil a pot of water with a pinch of salt. Add pasta and cook according to package instructions until al dente. Drain and set aside.',
        'In a separate pan, heat the tomato sauce over medium heat. Add herbs and spices to taste. Simmer for 10-15 minutes, stirring occasionally.',
        'Combine pasta with sauce. Mix well to coat evenly. Serve hot with a generous sprinkle of Parmesan cheese on top. Enjoy your meal!'
      ],
      imagePath: 'assets/images/spaghetti.jpg',
    ),
    Recipe(
      title: 'Grilled Cheese',
      description: 'A simple grilled cheese sandwich',
      ingredients: ['Bread', 'Cheese', 'Butter'],
      instructions: [
        'Butter one side of each bread slice. Place cheese between the unbuttered sides of the bread to make a sandwich.',
        'Heat a skillet over medium heat. Place the sandwich in the skillet, buttered side down. Cook until the bread is golden brown and the cheese starts to melt.',
        'Flip the sandwich and cook the other side until golden brown and the cheese is fully melted. Remove from heat, slice, and serve hot.'
      ],
      imagePath: 'assets/images/Grilled Cheese.jpg',
    ),
    Recipe(
      title: 'Pancakes',
      description: 'Fluffy pancakes for breakfast',
      ingredients: ['Flour', 'Milk', 'Eggs', 'Baking Powder', 'Salt', 'Sugar'],
      instructions: [
        'In a bowl, mix flour, baking powder, salt, and sugar. In another bowl, whisk together milk and eggs. Combine wet and dry ingredients until smooth.',
        'Heat a griddle or non-stick pan over medium heat. Lightly oil the surface. Pour batter onto the griddle, using approximately 1/4 cup for each pancake.',
        'Cook until bubbles form on the surface, then flip with a spatula. Cook until both sides are golden brown. Serve hot with syrup and butter.'
      ],
      imagePath: 'assets/images/Pancakes.jpg',
    ),
    Recipe(
      title: 'Salad',
      description: 'A fresh and healthy salad',
      ingredients: ['Lettuce', 'Tomato', 'Cucumber', 'Olive Oil', 'Salt', 'Pepper'],
      instructions: [
        'Chop lettuce, tomatoes, and cucumber into bite-sized pieces. Place them in a large salad bowl.',
        'Drizzle with olive oil and season with salt and pepper. Toss the salad to mix the ingredients well.',
        'Serve immediately as a side dish or a light meal. Add any additional toppings or dressings as desired.'
      ],
      imagePath: 'assets/images/Salad.jpg',
    ),
    Recipe(
      title: 'Chicken Curry',
      description: 'Spicy and savory chicken curry',
      ingredients: ['Chicken', 'Onion', 'Garlic', 'Tomato', 'Spices'],
      instructions: [
        'In a pot, sauté chopped onions and garlic in oil until golden brown. Add chicken pieces and cook until lightly browned.',
        'Stir in chopped tomatoes and a blend of spices (cumin, coriander, turmeric, chili powder). Cook until the tomatoes break down into a sauce.',
        'Simmer on low heat until the chicken is fully cooked and tender, about 20 minutes. Serve hot with rice or bread.'
      ],
      imagePath: 'assets/images/Chicken Curry.jpg',
    ),
    Recipe(
      title: 'Tacos',
      description: 'Mexican style tacos',
      ingredients: ['Tortillas', 'Beef', 'Lettuce', 'Cheese', 'Tomato'],
      instructions: [
        'Cook ground beef in a skillet over medium heat until browned. Season with taco seasoning and a bit of water. Simmer until thickened.',
        'Warm tortillas in a dry skillet or microwave. Fill each tortilla with a portion of the beef mixture.',
        'Top with shredded lettuce, diced tomatoes, and cheese. Fold the tortillas and serve immediately.'
      ],
      imagePath: 'assets/images/Tacos.jpg',
    ),
    Recipe(
      title: 'Smoothie',
      description: 'A healthy fruit smoothie',
      ingredients: ['Banana', 'Berries', 'Yogurt', 'Honey'],
      instructions: [
        'Combine banana, berries, yogurt, and honey in a blender. Blend until smooth.',
        'Adjust sweetness with additional honey if needed. Add a bit of water or milk if the smoothie is too thick.',
        'Pour into a glass and serve immediately. Garnish with a few fresh berries if desired.'
      ],
      imagePath: 'assets/images/Smoothie.jpg',
    ),
    Recipe(
      title: 'Omelette',
      description: 'A fluffy omelette with veggies',
      ingredients: ['Eggs', 'Bell Pepper', 'Onion', 'Cheese'],
      instructions: [
        'Whisk eggs in a bowl with a pinch of salt and pepper. Set aside.',
        'In a skillet, sauté diced bell pepper and onion until tender. Pour the eggs over the veggies and cook until set.',
        'Sprinkle cheese over one half of the omelette. Fold the omelette over the cheese and cook until melted. Serve hot.'
      ],
      imagePath: 'assets/images/Omelette.jpg',
    ),
    Recipe(
      title: 'Pizza',
      description: 'Homemade pizza with toppings',
      ingredients: ['Pizza Dough', 'Tomato Sauce', 'Cheese', 'Toppings'],
      instructions: [
        'Preheat oven to 475°F (245°C). Roll out pizza dough on a floured surface to your desired thickness.',
        'Spread tomato sauce evenly over the dough. Add a layer of shredded cheese and your favorite toppings.',
        'Bake on a pizza stone or baking sheet for 10-15 minutes, until the crust is golden and the cheese is bubbly. Slice and serve hot.'
      ],
      imagePath: 'assets/images/Pizza.jpg',
    ),
    Recipe(
      title: 'Brownies',
      description: 'Rich chocolate brownies',
      ingredients: ['Chocolate', 'Flour', 'Sugar', 'Butter', 'Eggs'],
      instructions: [
        'Preheat oven to 350°F (175°C). Melt butter and chocolate together in a saucepan over low heat. Stir until smooth.',
        'Remove from heat and stir in sugar, followed by eggs, one at a time. Mix in flour until just combined.',
        'Pour batter into a greased baking dish. Bake for 20-25 minutes, until a toothpick inserted into the center comes out clean. Cool before cutting.'
      ],
      imagePath: 'assets/images/Brownies.jpg',
    ),
  ];

  List<Recipe> filteredRecipes = [];

  @override
  void initState() {
    super.initState();
    filteredRecipes = recipes;
  }

  void filterRecipes(String query) {
    List<Recipe> newFilteredRecipes = recipes.where((recipe) {
      return recipe.title.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredRecipes = newFilteredRecipes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Recipes',
                border: OutlineInputBorder(),
              ),
              onChanged: (query) {
                filterRecipes(query);
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
              ),
              itemCount: filteredRecipes.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetailScreen(recipe: filteredRecipes[index]),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.asset(
                            height: 50,
                            filteredRecipes[index].imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                filteredRecipes[index].title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                              Text(
                                filteredRecipes[index].description,
                                style: TextStyle(fontSize: 14),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


            // Detals Screen

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(recipe.imagePath),
              SizedBox(height: 10),
              Text(
                recipe.description,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Ingredients', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ...recipe.ingredients.map((ingredient) => Text('• $ingredient')).toList(),
              SizedBox(height: 10),
              Text('Instructions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ...recipe.instructions.map((instruction) => Text(instruction)).toList(),
            ],
          ),
        ),
      ),
    );
  }
}


