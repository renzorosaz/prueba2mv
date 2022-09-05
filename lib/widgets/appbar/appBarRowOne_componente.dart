import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/fonts.dart';
import '../../util/responsive.dart';

class AppBarRowOne extends StatelessWidget {
  AppBarRowOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Padding(
      padding:
          EdgeInsets.only(left: responsive.ip(1.5), right: responsive.ip(1.5)),
      child: Row(children: [
        Expanded(
          child: Row(
            children: [
              Image.asset('assets/icons/ic_home.png', width: responsive.ip(2)),
              SizedBox(width: responsive.hp(1)),
              Text("Inicio",
                  style: AppTypographyPalette.titleSub
                      .copyWith(fontSize: responsive.ip(1.8)))
            ],
          ),
        ),
        Container(
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(color: AppColorPalette.green, width: 3),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/ic_add.png', width: 20, height: 20),
                  SizedBox(
                      child: Text("0",
                          style: AppTypographyPalette.titleSub.copyWith(
                              fontSize: responsive.ip(1.5),
                              fontWeight: FontWeight.bold,
                              color: AppColorPalette.green)))
                ],
              ),
            ))
      ]),
    );
  }
}
