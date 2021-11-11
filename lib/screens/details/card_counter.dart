import 'package:bagshop_ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import 'outlined_button.dart';

class CardCounter extends StatefulWidget {
  const CardCounter({Key? key}) : super(key: key);

  @override
  _CardCounterState createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  void removeCounter() {
    if (numberOfItems > 1) {
      setState(() {
        numberOfItems--;
      });
    }
  }

  void addToCounter() {
    setState(() {
      numberOfItems++;
    });
  }

  int numberOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyOutlinedButton(
            myIcon: const Icon(Icons.remove), press: removeCounter),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
          child: Text(
            numberOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        MyOutlinedButton(
          myIcon: const Icon(Icons.add),
          press: addToCounter,
        )
      ],
    );
  }
}
