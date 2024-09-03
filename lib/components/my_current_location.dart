import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your Location"),
              content: const TextField(
                decoration: InputDecoration(
                  hintText: "Search Location",
                  border: OutlineInputBorder(),
                ),
              ),
              actions: [
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel")),
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Save"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 16),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(children: [
              Icon(Icons.location_on_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary),
              Text(
                "karnavati University",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Icon(Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ]),
          )
        ],
      ),
    );
  }
}
