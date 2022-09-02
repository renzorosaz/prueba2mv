import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  String pathImage;
  String description;
  String presentation;
  String brand;
  String price;
  String priceOld;
  CardProduct(
      {Key? key,
      required this.brand,
      required this.pathImage,
      required this.description,
      required this.presentation,
      required this.price,
      required this.priceOld})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.asset(pathImage),
            Container(
              padding: const EdgeInsets.only(top: 9, left: 9, right: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: TextStyle(
                        height: 1.3,
                        wordSpacing: 2,
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Metropolis'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    presentation,
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 138, 138, 141),
                        fontFamily: 'Metropolis'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    brand,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green.shade800,
                        fontFamily: 'Metropolis'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Metropolis'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          priceOld,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough,
                              fontFamily: 'Metropolis'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      width: 140,
                      height: 39,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(39, 136, 77, 1),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                45) //                 <--- border radius here
                            ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: const Icon(
                              Icons.minimize_rounded,
                              color: Color.fromRGBO(39, 136, 77, 1),
                            ),
                          ),
                          const Text('1',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Metropolis')),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: const Icon(
                              Icons.add,
                              color: Color.fromRGBO(39, 136, 77, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
