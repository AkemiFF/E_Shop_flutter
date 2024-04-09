import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductContainerCustom extends StatefulWidget {
  const ProductContainerCustom({super.key});

  @override
  State<ProductContainerCustom> createState() => _ProductContainerCustomState();
}

class _ProductContainerCustomState extends State<ProductContainerCustom> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: (MediaQuery.of(context).size.height / 2),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0,
          children: [
            Container(
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
                  title: const Text(
                    "3 000MGA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.red,
                        shadows: [Shadow(color: Colors.pink, blurRadius: 10)],
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: const BottomAppBar(
                  color: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Asus ROG F17",
                      style: TextStyle(
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Élément 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Élément 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Élément 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Élément 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Élément 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
