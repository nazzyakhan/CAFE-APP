import 'package:flutter/material.dart';
import 'package:junkfoodiez/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //sandwiches
    Food(
      name: "Puff Sandwich",
      imagePath: "lib/images/sandwich/sandwich 1.jpeg",
      price: "180",
      description:
          "puffed super buttery sandwich with cheese, bacon and lettuce",
      category: FoodCategory.sandwich,
      availableAddOns: [
        AddOn(name: "Onion", price: "10"),
        AddOn(name: "Lettuce", price: "10"),
        AddOn(name: "Tomato", price: "10"),
        AddOn(name: "Mayo", price: "10"),
      ],
    ),
    Food(
      name: "Chipal Sandwich",
      imagePath: "lib/images/sandwich/sandwich 2.jpeg",
      price: "180",
      description:
          "cheesy sandwich with potato, onion and cheese,super buttery sandwich with cheese, bacon and lettuce",
      category: FoodCategory.sandwich,
      availableAddOns: [
        AddOn(name: "Onion", price: "10"),
        AddOn(name: "Lettuce", price: "10"),
        AddOn(name: "Tomato", price: "10"),
        AddOn(name: "Mayo", price: "10"),
      ],
    ),
    Food(
      name: "Musshy Sandwich",
      imagePath: "lib/images/sandwich/sandwich 3.jpeg",
      price: "180",
      description:
          "Soft sandwich with cheese, bacon and lettuce, super buttery sandwich with cheese, bacon and lettuce",
      category: FoodCategory.sandwich,
      availableAddOns: [
        AddOn(name: "Onion", price: "10"),
        AddOn(name: "Lettuce", price: "10"),
        AddOn(name: "Tomato", price: "10"),
        AddOn(name: "Mayo", price: "10"),
      ],
    ),
    //coffee
    Food(
      name: "hot Coffee",
      imagePath: "lib/images/coffee/coffee 1.jpeg",
      price: "180",
      description: "light coffee with milk, chocolate and vanilla",
      category: FoodCategory.coffee,
      availableAddOns: [
        AddOn(name: "cream", price: "10"),
        AddOn(name: "sugar", price: "10"),
        AddOn(name: "milk", price: "10"),
      ],
    ),
    Food(
      name: "Cold Coffee",
      imagePath: "lib/images/coffee/coffee 2.jpeg",
      price: "180",
      description: "Cold frappo coffee with milk, chocolate and vanilla",
      category: FoodCategory.coffee,
      availableAddOns: [
        AddOn(name: "cream", price: "10"),
        AddOn(name: "sugar", price: "10"),
        AddOn(name: "milk", price: "10"),
      ],
    ),
    Food(
      name: "MOCHA special",
      imagePath: "lib/images/coffee/coffee 3.jpeg",
      price: "180",
      description:
          "special delightful cofee loved by everyone with milk, chocolate and vanilla",
      category: FoodCategory.coffee,
      availableAddOns: [
        AddOn(name: "cream", price: "10"),
        AddOn(name: "sugar", price: "10"),
        AddOn(name: "milk", price: "10"),
      ],
    ),
    Food(
      name: "MOCHA cupcakes",
      imagePath: "lib/images/dessert/dessert 1.jpeg",
      price: "80",
      description: "tiny shots of happiness. Made with goodness of pineapple ",
      category: FoodCategory.dessert,
      availableAddOns: [
        AddOn(name: "cream", price: "10"),
        AddOn(name: "sugar", price: "10"),
        AddOn(name: "milk", price: "10"),
      ],
    ),
  ];

  //G E T T E R S

  List<Food> get menu => _menu;

  // O P E R A T I O N S

  /*
    //ADD TO CART
    //REMOVE FROM CART
    //GET TOTAL NUMBER OF ITEM IN CART
    //GET TOTAL AMOUNT
    //CLEAR CART

    
    */
}
