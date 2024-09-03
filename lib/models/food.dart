class Food {
  final String name;
  final String imagePath;
  final String price;
  final String description;
  final FoodCategory category;
  List<AddOn> availableAddOns;

  Food(
      {required this.name,
      required this.imagePath,
      required this.price,
      required this.description,
      required this.category,
      required this.availableAddOns});
}

//categories

enum FoodCategory { sandwich, coffee, shakes, dessert, tea }

//add ons

class AddOn {
  final String name;
  final String price;

  AddOn({required this.name, required this.price});
}
