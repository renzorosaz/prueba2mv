import 'package:flutter/material.dart';

class AppBarRowFinder extends StatelessWidget {
  const AppBarRowFinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_rounded,
          color: Colors.green.shade800,
          size: 40,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
              height: 38,
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
                    height: 32,
                    width: 200,
                    padding: const EdgeInsets.only(top: 5, bottom: 5, left: 12),
                    decoration: BoxDecoration(
                      //color: Colors.grey[350],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Buscar en market",
                        hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
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
    );
  }
}
