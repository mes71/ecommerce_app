import 'package:bagshop_ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(color: product.color),
                borderRadius: BorderRadius.circular(18)),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg"),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 3),
              child: SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Buy",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  style: TextButton.styleFrom(backgroundColor: product.color),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
