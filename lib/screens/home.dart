import 'package:flutter/material.dart';
import 'package:flutter_app/const/MesImages.dart';
import 'package:flutter_app/widget_categorie_home.dart';
import 'package:flutter_app/e_commerce/my_widget/wedget_menu.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyWidget(),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: Carousel(
              hasBorderRadius: true,
              boxFit: BoxFit.cover,
              autoplay: false,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: const Duration(milliseconds: 1000),
              dotSize: 6.0,
              dotIncreasedColor: const Color(0xFFFF335C),
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              dotColor: Colors.grey,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                Image.asset(MesImages.ImagesCaroussel[0]),
                Image.asset(MesImages.ImagesCaroussel[1]),
                Image.asset(MesImages.ImagesCaroussel[2]),
                Image.asset(MesImages.ImagesCaroussel[3])
              ],
            ),
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: const Center(
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              spacing: 15.0,
              runSpacing: 15.0,
              alignment: WrapAlignment.center,
              children: List.generate(
                MesImages.ImagesCategories.length,
                (index) => WidgetCategorieHome(
                  imagePath: MesImages.ImagesCategories[index],
                  categoryName: MesImages.nomCategories[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
