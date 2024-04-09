import 'package:flutter/material.dart';
import 'package:shop_app/screens/custom.dart';

class BottomAppBarCustom extends StatefulWidget {
  const BottomAppBarCustom({super.key});

  @override
  State<BottomAppBarCustom> createState() => _BottomAppBarCustomState();
}

class _BottomAppBarCustomState extends State<BottomAppBarCustom> {
  CustomClass custom = CustomClass();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // color: const Color.fromARGB(255, 157, 2, 2),
      padding: const EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(0.0),
        padding: const EdgeInsets.all(0.0),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(107, 85, 85, 85),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                print("hiii");
              },
              icon: Icon(
                Icons.home_outlined,
                color: custom.button_color,
                size: custom.icon_size,
              ),
              padding: EdgeInsets.symmetric(horizontal: custom.margin_icon),
            ),
            IconButton(
              onPressed: () {
                print("hiii");
              },
              icon: Icon(
                Icons.notifications_outlined,
                color: custom.icon_color,
                size: custom.icon_size,
              ),
              padding: EdgeInsets.symmetric(horizontal: custom.margin_icon),
            ),
            IconButton(
              onPressed: () {
                print("hiii");
              },
              icon: Icon(
                Icons.favorite_outline,
                color: custom.icon_color,
                size: custom.icon_size,
              ),
              padding: EdgeInsets.symmetric(horizontal: custom.margin_icon),
            ),
            IconButton(
              onPressed: () {
                print("hiii");
              },
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: custom.icon_color,
                size: custom.icon_size,
              ),
              padding: EdgeInsets.symmetric(horizontal: custom.margin_icon),
            ),
            IconButton(
              onPressed: () {
                print("hiii");
              },
              icon: Icon(
                Icons.person_outline,
                color: custom.icon_color,
                size: custom.icon_size,
              ),
              padding: EdgeInsets.symmetric(horizontal: custom.margin_icon),
            ),
          ],
        ),
      ),
    );
  }
}
