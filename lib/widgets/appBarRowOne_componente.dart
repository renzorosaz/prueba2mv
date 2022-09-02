import 'package:flutter/material.dart';

class AppBarRowOne extends StatelessWidget {
  const AppBarRowOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/ic_home.png',
              ),
              const SizedBox(width: 9.25),
              const Text("Inicio",
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87))
            ],
          ),
        ),
      ),
      Container(
          width: 70,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(39, 136, 77, 1), width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/ic_add.png', width: 20, height: 20),
                const SizedBox(
                    child: Text("0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromRGBO(39, 136, 77, 1),
                          fontFamily: 'Metropolis',
                        )))
              ],
            ),
          ))
    ]);
  }
}
