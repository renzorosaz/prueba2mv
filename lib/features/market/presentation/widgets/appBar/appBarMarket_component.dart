import 'package:flutter/material.dart';

import '../../../../../util/responsive.dart';
import '../../../../../widgets/appbar/appBarRowCoberture_component.dart';
import '../../../../../widgets/appbar/appBarRowFinder_component.dart';
import '../../../../../widgets/appbar/appBarRowOne_componente.dart';

class AppBarMarketComponent extends StatelessWidget {
  const AppBarMarketComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(244, 244, 244, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: responsive.hp(3),
          ),
          AppBarRowOne(),
          SizedBox(
            height: responsive.hp(3),
          ),
          AppBarRowFinder(),
          SizedBox(
            height: responsive.hp(2),
          ),
          AppBarRowCoberture(),
          SizedBox(
            height: responsive.hp(1.5),
          ),
        ],
      ),
    );
  }
}
