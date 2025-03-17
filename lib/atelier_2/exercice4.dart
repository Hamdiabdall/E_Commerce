import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  cptScreenState createState() => cptScreenState();
}

class cptScreenState extends State<Compteur> {
  int cpt = 0; 

  void _increment() {
    setState(() {
      cpt++; 
    });
  }

  void _decrement() {
    setState(() {
      if (cpt > 0) {
        cpt--; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 4"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            addButton("-", _decrement), 
            SizedBox(width: 20), 
            Text("$cpt", style: TextStyle(fontSize: 24)), 
            SizedBox(width: 20), 
            addButton("+", _increment), 
          ],
        ),
      ),
    );
  }
}

Widget addButton(String txt, Function onPressed) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: onPressed as void Function()?,
    child: Text(
      txt,
      style: TextStyle(fontSize: 24),
    ),
  );
}