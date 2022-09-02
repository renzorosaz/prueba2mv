import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
            elevation: 1,
            toolbarHeight: 150,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(244, 244, 244, 1),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(80.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/ic_home.png',
                            ),
                            const SizedBox(width: 9.25),
                            const Text("Inicio",
                                style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87))
                          ],
                        ),
                      ),
                      Container(
                          width: 70,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(39, 136, 77, 1),
                                  width: 3),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ic_add.png',
                                    width: 20, height: 20),
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
                    ]),
                    //InecoAsset.faceLogo.image(width: 250, height: 50),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.green.shade800,
                          size: 40,
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
                                    offset: const Offset(
                                        0, 6), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 200,
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 12),
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
                                            fontWeight: FontWeight.w300,
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(
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
                    )
                  ],
                ),
              ),
            ),
          ),
          body: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Text(
        "SNACKS",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
