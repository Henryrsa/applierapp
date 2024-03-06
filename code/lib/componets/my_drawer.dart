import 'package:applierapp/Pages/Login_or_register.dart';
import 'package:applierapp/componets/aps_calculator.dart';
import 'package:applierapp/componets/profile.dart';
import 'package:flutter/material.dart';
import 'package:applierapp/componets/about.dart';
/*

D R A W E R

This is the drawer which the user can open by tapping on the top left menu icon.

This drawer can hold many list tiles. Usually you would place the buttons/pages
that you couldn't fit on the bottom nav bar. 

For e.g. a logout button, an about section, etc.

What pages should the rest of the app contain? 

Remember, just having more and more pages isn't always a good thing.
Sometimes, it's better to be simple and concise in what your app does,
so you include only the absolutely necessary pages and functionality to your app!

*/

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // method to log user out
  void logUserOut(BuildContext context) {
    // pop drawer
    Navigator.pop(context);
    // pop app
    Navigator.pop(context);
    // go back to login page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginOrRegisterPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        children: [
          // Drawer header
          const DrawerHeader(
            child: Center(
              child: Icon(
                Icons.phone_iphone_rounded,
                size: 64,
              ),
            ),
          ),

          const SizedBox(height: 25),

          // PROFILE PAGE

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(
                  "P R O F I L E",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),

          // ABOUT PAGE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
              child: ListTile(
                leading: const Icon(Icons.info),
                title: Text(
                  "A B O U T",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),

// APS CALCULATOR PAGE

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApsCalculator(),
                  ),
                );
              },
              child: ListTile(
                leading: const Icon(Icons.calculate),
                title: Text(
                  "A P S Calculator",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),

          // LOGOUT BUTTON
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListTile(
              leading: const Icon(Icons.logout),
              onTap: () => logUserOut(context),
              title: Text(
                "L O G O U T",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
