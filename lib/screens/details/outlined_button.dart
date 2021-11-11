import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final Icon myIcon;

  final  Function()? press;

  const MyOutlinedButton({
    Key? key,
    required this.myIcon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32,
        width: 40,
        child: OutlinedButton(
          onPressed: press,
          child: myIcon,
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              padding: EdgeInsets.zero),
        ));
  }
}
