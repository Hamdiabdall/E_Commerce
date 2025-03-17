import 'package:flutter/material.dart';
import 'package:flutter_app/screens/cart_screen.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/liste_des_produits.dart';
import 'package:flutter_app/screens/user_info.dart';

class PageBarreNavigation extends StatefulWidget {
  const PageBarreNavigation({super.key});

  @override
  State<PageBarreNavigation> createState() => _PageBarreNavigationState();
}

class _PageBarreNavigationState extends State<PageBarreNavigation> {
  int selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    ListeProduitsScreen(),
    CartScreen(),
    UserInfoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: myScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Liste Produit'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Panier'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
        ],
      ),
    );
  }
}
