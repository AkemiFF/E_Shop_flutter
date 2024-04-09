import 'package:flutter/material.dart';
import 'package:shop_app/screens/custom.dart';
import 'package:shop_app/screens/widgets/bottomappbar.dart';
import 'package:shop_app/screens/widgets/listcategories.dart';
import 'package:shop_app/screens/widgets/productcontainer.dart';
import 'package:shop_app/screens/widgets/searchfield.dart';

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
        toolbarHeight: 10,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchField(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80,
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 40,
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
