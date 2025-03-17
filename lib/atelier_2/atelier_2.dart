import 'package:flutter/material.dart';

void atelier_2_main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Correction de la propriété
                foregroundColor: Colors.white, // Correction de la propriété
              ),
              onPressed: () {
                print("Click sur B1");
              },
              child: Text("Button 1"),
            ),
            Icon(Icons.ac_unit),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Correction de la propriété
                foregroundColor: Colors.white, // Correction de la propriété
              ),
              onPressed: () {
                print("Click sur B2");
              },
              child: Text("Button 2"),
            ),
            Padding(
              padding: EdgeInsets.all(6.0), // Correction de la propriété
            ),
            SizedBox(
              width: 210,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Correction de la propriété
                  foregroundColor: Colors.white, // Correction de la propriété
                ),
                onPressed: () {
                  print("Click sur B3"); // Changé pour rendre le bouton unique
                },
                child: Text("Button 3"), // Changé pour rendre le bouton unique
              ),
            ),
          ],
        ),
      ),
    ),
  );

  runApp(myApp);
}