import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/fonts.dart';
import '../../util/responsive.dart';

class ButtonTopic extends StatelessWidget {
  String title;
  bool enable;
  ButtonTopic({Key? key, required this.title, required this.enable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
        decoration: BoxDecoration(
          color: enable ? Colors.black : null,
          border: Border.all(
            width: 1.0,
            color: enable ? Colors.black : AppColorPalette.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: SizedBox(
            child: Padding(
          padding: EdgeInsets.only(
              right: responsive.ip(1),
              left: responsive.ip(1),
              top: responsive.ip(1),
              bottom: responsive.ip(1)),
          child: Text(title,
              style: AppTypographyPalette.textFont300.copyWith(
                fontSize: responsive.ip(1.39),
                color: enable ? Colors.white : Colors.black,
              )),
        )));
  }
}
