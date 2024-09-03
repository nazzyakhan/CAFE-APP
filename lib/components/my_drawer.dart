import 'package:flutter/material.dart';
import 'package:junkfoodiez/components/my_drawer_tile.dart';
import 'package:junkfoodiez/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Icon(Icons.lock_open_rounded,
                size: 80, color: Theme.of(context).colorScheme.inversePrimary),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            icon: Icons.home,
            text: "H O M E",
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            icon: Icons.settings,
            text: "S E T T I N G S",
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          const Spacer(),
          MyDrawerTile(
            icon: Icons.logout,
            text: "L O G O U T",
            onTap: () {},
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
