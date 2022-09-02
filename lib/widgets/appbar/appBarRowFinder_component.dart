import 'package:flutter/material.dart';

import '../../util/responsive.dart';

class AppBarRowFinder extends StatelessWidget {
  const AppBarRowFinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Padding(
      padding:
          EdgeInsets.only(left: responsive.ip(1.5), right: responsive.ip(1.5)),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_rounded,
            color: Colors.green.shade800,
            size: 40,
          ),
          SizedBox(
            width: responsive.wp(1),
          ),
          Expanded(
            child: Container(
                height: responsive.hp(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,

                      blurRadius: 8,
                      offset: const Offset(0, 6), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: responsive.hp(14),
                      width: responsive.hp(16),
                      padding: EdgeInsets.only(
                          top: responsive.ip(0.3), bottom: 5, left: 12),
                      decoration: BoxDecoration(
                        //color: Colors.grey[350],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: "Buscar en market",
                          hintStyle: TextStyle(
                              color: Colors.black26,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              fontSize: responsive.ip(1.4)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade800,
                          border: Border.all(
                            width: 2.0,
                            color: Colors.green.shade800,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(
                                  10) //                 <--- border radius here
                              ),
                        ),
                        child: SizedBox(
                            width: 48,
                            child: Image.asset(
                              'assets/icons/ic_find.png',
                              width: 38,
                              height: 38,
                              color: Colors.white,
                            )))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
