import 'package:flutter/material.dart';
import 'package:shop_app/screens/custom.dart';
import 'package:shop_app/screens/widgets/bottomappbar.dart';
import 'package:shop_app/screens/widgets/listcategories.dart';
import 'package:shop_app/screens/widgets/productcontainer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CustomClass custom = CustomClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: custom.main_bg_color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 255, 0, 0),
                suffixIcon: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: custom.button_color,
                  ),
                  child: IconButton(
                    onPressed: () {
                      print("hello");
                    },
                    color: custom.dark_font_color,
                    icon: const Icon(Icons.search),
                  ),
                ),
                hintText: "Rechercher: Categorie, Nom, ...",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(69, 0, 47, 47),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: Color.fromARGB(81, 255, 0, 0)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 45,
                  color: custom.dark_font_color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListCategorieCustom(),
            const SizedBox(
              height: 25,
            ),
            const ProductContainerCustom(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBarCustom(),
    );
  }
}
