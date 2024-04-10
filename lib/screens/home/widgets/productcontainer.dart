import 'package:flutter/material.dart';
import 'package:shop_app/screens/custom.dart';
import 'package:shop_app/screens/home/widgets/productexample.dart';

class ProductContainerCustom extends StatefulWidget {
  const ProductContainerCustom({super.key});

  @override
  State<ProductContainerCustom> createState() => _ProductContainerCustomState();
}

class _ProductContainerCustomState extends State<ProductContainerCustom> {
  CustomClass custom = CustomClass();
  List<String> productInfo = [
    "Asus ROG F17",
    "50 Million",
    "assets/images/asus_rog_f17.jpg",
  ];
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
            ProductExample(favorited: false, productInfo: productInfo),
            ProductExample(favorited: false, productInfo: productInfo),
            ProductExample(favorited: true, productInfo: productInfo),
            ProductExample(favorited: false, productInfo: productInfo),
            ProductExample(favorited: true, productInfo: productInfo),
            ProductExample(favorited: true, productInfo: productInfo),
          ],
        ),
      ),
    );
  }
}
