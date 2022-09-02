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
            backgroundColor: Color.fromRGBO(244, 244, 244, 1),
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
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.green.shade800, width: 3),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(13))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ic_add.png',
                                    width: 20, height: 20),
                                Container(
                                    child: Text("0",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.green.shade800,
                                          fontFamily: 'Axiforma',
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
                        Container(
                            width: 256,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      //color: Colors.grey[350],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        hintText: "Buscar en market",
                                        hintStyle: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 14),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(),
                                      child: Container(
                                          child: Image.asset(
                                        'assets/icons/ic_find.png',
                                        color: Colors.green,
                                      )))
                                ],
                              ),
                            ))
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
