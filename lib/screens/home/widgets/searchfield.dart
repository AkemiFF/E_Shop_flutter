import 'package:flutter/material.dart';
import 'package:shop_app/screens/custom.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  CustomClass custom = CustomClass();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          helperText: "Keske tu veux",
          filled: true,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          suffixIcon: Container(
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
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
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              iconSize: 25,
            ),
          ),
          hintText: "Rechercher: Categorie, Nom, ...",
          hintStyle: const TextStyle(
            color: Color.fromARGB(69, 0, 47, 47),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: custom.button_color),
          ),
        ),
      ),
    );
  }
}
