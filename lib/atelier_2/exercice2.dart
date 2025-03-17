import 'package:flutter/material.dart';

void exercice2_main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addButton("Button 1"),
            Expanded(
              flex: 2,
              child: Icon(
                Icons.ac_unit,
                size: 30,
                color: Colors.red,
              ),
            ),
            addButton("Button 2"),
            Icon(
              Icons.add_circle,
              color: Colors.green, // Correction ici
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
            ),
            SizedBox(
              width: 210,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  print("Click sur B3");
                },
                child: Text("Button 3"),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  runApp(myApp);
}

Widget addButton(String txt) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    onPressed: () {
      print("Click sur $txt");
    },
    child: Text(txt),
  );
}
