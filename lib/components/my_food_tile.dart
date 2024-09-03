import 'package:flutter/material.dart';
import 'package:junkfoodiez/models/food.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, required this.food, this.onTap});
  final Food food;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(children: [
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(food.name),
                    Text(
                      'Rs.' + food.price.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(food.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary)),
                  ])),
              const SizedBox(width: 15),
              //food image in the side
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(food.imagePath,
                      width: 120, height: 120, fit: BoxFit.fill))
            ]),
          )),
      //divider
      Divider(
        color: Theme.of(context).colorScheme.tertiary,
        indent: 25,
        endIndent: 25,
      )
    ]);
  }
}
