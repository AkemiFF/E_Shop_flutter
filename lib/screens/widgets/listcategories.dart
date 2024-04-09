import 'package:flutter/material.dart';
import 'package:shop_app/screens/custom.dart';

class ListCategorieCustom extends StatefulWidget {
  const ListCategorieCustom({super.key});

  @override
  State<ListCategorieCustom> createState() => _ListCategorieCustomState();
}

class _ListCategorieCustomState extends State<ListCategorieCustom> {
  CustomClass custom = CustomClass();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Medicaments",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: custom.icon_color,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Technologie",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: custom.dark_font_color,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Alimentaire",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: custom.icon_color,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "En Gros",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: custom.icon_color,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
