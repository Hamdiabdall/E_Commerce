// import 'dart:math';

// import 'package:flutter/material.dart';

// class GestionCouleurs extends StatefulWidget {
//   const GestionCouleurs({super.key});

//   @override
//   State<GestionCouleurs> createState() => _GestionCouleursState();
// }

// class _GestionCouleursState extends State<GestionCouleurs> {
//   List<Color> couleurs = [
//     const Color.fromARGB(255, 207, 197, 12),
//     Colors.black,
//     Colors.red,
//     Colors.green,
//     Colors.blue
//   ];
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: couleurs[index],
//       backgroundColor: couleur,
//       appBar: AppBar(
//         title: Text("Gestion Couleur"),
//       ),
//       body: ElevatedButton(
//           onPressed: () {
//             setState(() {
//               //   if(couleur==Colors.blue){
//               //   couleur = Colors.pink;
//               // }
//               // else {
//               //   couleur = Colors.blue;
//               // }
//               // changeCouleurDepuisList(index);
//               changeCouleursRandom();
//             });
//           },
//           child: Text("Changer Couleurs")),
//     );
//   }
//   void changeCouleurDepuisList(int currentIndex) {
//     index =(index + 1) % couleurs.length;
//   }

//   Color changeCouleursRandom() {
//     couleur = Color.fromARGB(Random.NextInt(255), Random.NextInt(255), Random.NextInt(255), Random.NextInt(255))
//     return couleur;
    
//   }
// }


import 'dart:math';
import 'package:flutter/material.dart';

class GestionCouleurs extends StatefulWidget {
  const GestionCouleurs({super.key});

  @override
  State<GestionCouleurs> createState() => _GestionCouleursState();
}

class _GestionCouleursState extends State<GestionCouleurs> {
  List<Color> couleurs = [
    const Color.fromARGB(255, 207, 197, 12),
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.blue
  ];
  int index = 0;
  Color couleur = Colors.blue; // Initialize couleur with a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("Gestion Couleur"),
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            changeCouleurDepuisList(index);
          });
        },
        child: Text("Changer Couleurs"),
      ),
    );
  }

  void changeCouleurDepuisList(int currentIndex) {
    index = (index + 1) % couleurs.length;
    couleur = couleurs[index];
  }

  Color changeCouleursRandom() {
    final random = Random();
    couleur = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
    return couleur;
  }
}
