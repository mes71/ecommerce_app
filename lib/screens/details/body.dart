import 'package:bagshop_ecommerce_app/models/product.dart';
import 'package:bagshop_ecommerce_app/screens/details/product_image_title.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding:
                  EdgeInsets.only(top: size.height*0.12),
                  margin: EdgeInsets.only(top: size.height * 0.37),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),

                  child: Column(
                    children: [
                      Row(
                        children: [],
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(
                  product: product,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
