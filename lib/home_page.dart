import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blueGrey,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(icon: Icons.home,
              text: 'Home',),
              GButton(icon: Icons.favorite_border,text: 'Likes',),
              GButton(icon: Icons.search,text: 'Search',),
              GButton(icon: Icons.settings,text: 'Settings',),
            ]
          ),
        ),
      ),
    );
  }
}
