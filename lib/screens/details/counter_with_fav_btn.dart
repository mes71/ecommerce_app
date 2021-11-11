import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'card_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CardCounter(),
        Container(
          width: 32,
          height: 32,
          padding: const EdgeInsets.all(8),
          decoration:
              const BoxDecoration(color: Color(0XFFFF6464), shape: BoxShape.circle),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
