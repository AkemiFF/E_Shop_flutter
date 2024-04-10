// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:shop_app/screens/custom.dart';

class ProductExample extends StatefulWidget {
  final bool favorited;
  final List<String> productInfo;
  const ProductExample({
    super.key,
    required this.favorited,
    required this.productInfo,
  });

  @override
  State<ProductExample> createState() => _ProductExampleState();
}

class _ProductExampleState extends State<ProductExample> {
  CustomClass custom = CustomClass();

  late bool _favorited;

  @override
  void initState() {
    super.initState();
    _favorited = widget.favorited;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: RichText(
            text: TextSpan(
                text: widget.productInfo[1],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: custom.dark_font_color,
                ),
                children: [
                  TextSpan(
                    text: " MGA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: custom.button_color,
                      fontSize: 18,
                    ),
                  ),
                ]),
          ),
          actions: [
            IconButton(
              onPressed: () => {
                setState(() {
                  if (_favorited == false) {
                    _favorited = true;
                  } else {
                    _favorited = false;
                  }
                }),
              },
              icon: _favorited
                  ? const Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.red,
                      shadows: [Shadow(color: Colors.pink, blurRadius: 10)],
                    )
                  : Icon(
                      Icons.favorite_outline_outlined,
                      color: custom.icon_color,
                    ),
            ),
          ],
        ),
        body: const Image(
          image: AssetImage("assets/images/asus_rog_f17.jpg"),
          alignment: Alignment.center,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          height: 50,
          child: Center(
            child: Text(
              widget.productInfo[0],
              style: const TextStyle(
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
