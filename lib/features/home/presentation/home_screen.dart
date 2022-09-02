import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
                child: Text(
              "Snacks",
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.bold),
            )),
            const SizedBox(height: 11),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(244, 244, 244, 1),
                          border: Border.all(
                            width: 2.0,
                            color: const Color.fromRGBO(244, 244, 244, 1),
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(
                                  10) //                 <--- border radius here
                              ),
                        ),
                        child: SizedBox(
                            width: 178,
                            height: 41,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ordenar",
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w500),
                                ),
                                Image.asset(
                                  'assets/icons/ic_shape.png',
                                  width: 38,
                                  height: 38,
                                  color: Colors.black,
                                ),
                              ],
                            )))
                  ],
                ),
                const SizedBox(width: 12),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(244, 244, 244, 1),
                          border: Border.all(
                            width: 2.0,
                            color: const Color.fromRGBO(244, 244, 244, 1),
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(
                                  10) //                 <--- border radius here
                              ),
                        ),
                        child: SizedBox(
                            width: 178,
                            height: 41,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Marcas",
                                      style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: new BoxDecoration(
                                        color: Color.fromRGBO(39, 136, 77, 1),
                                        shape: BoxShape.circle,
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  'assets/icons/ic_arrow_down.png',
                                  width: 38,
                                  height: 38,
                                  color: Colors.black,
                                ),
                              ],
                            )))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
