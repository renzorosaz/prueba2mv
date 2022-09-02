import 'package:flutter/material.dart';

import '../../util/responsive.dart';

class AppBarRowCoberture extends StatelessWidget {
  const AppBarRowCoberture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Padding(
      padding:
          EdgeInsets.only(left: responsive.ip(1.5), right: responsive.ip(1.5)),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/icons/ic_location.png',
                  width: 26,
                  height: 26,
                ),
                const SizedBox(
                  width: 19,
                ),
                Text("Consultar cobertura",
                    style: TextStyle(
                        color: Color.fromRGBO(103, 103, 105, 1),
                        fontFamily: 'Metropolis',
                        fontSize: responsive.ip(1.4),
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 24,
            color: Color.fromRGBO(103, 103, 105, 1),
          )
        ],
      ),
    );
  }
}
