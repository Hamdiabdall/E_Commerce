import 'package:flutter/material.dart';
import 'package:flutter_app/screens/liste_des_produits.dart';
import 'package:flutter_app/screens/cart_screen.dart';
import 'package:flutter_app/screens/user_info.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.purpleAccent),accountName: Text("Hamdi Abdallah"), accountEmail: Text("hamdiabdallah681@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png"),
          ),
          ),
          Divider(),
          ListTile(
            title: Text("Acceuil"),
            leading: Icon(Icons.home),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
          ),
          ListTile(
            title: Text("Liste de produit"),
            leading: Icon(Icons.list),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => ListeProduitsScreen()),
              );
            },
          ),
          ListTile(
            title: Text("panier"),
            leading: Icon(Icons.shop_2),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
          ListTile(
            title: Text("profil"),
            leading: Icon(Icons.face_3),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => UserInfoScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}