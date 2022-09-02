import 'package:flutter/material.dart';

import '../util/responsive.dart';

class CardProduct extends StatelessWidget {
  String pathImage;
  String description;
  String presentation;
  String brand;
  String price;
  String priceOld;
  int inStock;
  CardProduct(
      {Key? key,
      required this.brand,
      required this.pathImage,
      required this.description,
      required this.presentation,
      required this.price,
      required this.priceOld,
      required this.inStock})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.asset(pathImage),
            Container(
              padding: EdgeInsets.only(
                  top: responsive.ip(1),
                  left: responsive.ip(1),
                  right: responsive.ip(1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: TextStyle(
                        height: 1.3,
                        wordSpacing: responsive.ip(1.23),
                        fontSize: responsive.ip(1.5),
                        color: Colors.black,
                        fontFamily: 'Metropolis'),
                  ),
                  SizedBox(height: responsive.hp(0.5)),
                  Text(
                    presentation,
                    style: TextStyle(
                        fontSize: responsive.ip(1.4),
                        color: Color.fromARGB(255, 138, 138, 141),
                        fontFamily: 'Metropolis'),
                  ),
                  SizedBox(height: responsive.hp(1)),
                  Text(
                    brand,
                    style: TextStyle(
                        fontSize: responsive.ip(1.4),
                        color: Colors.green.shade800,
                        fontFamily: 'Metropolis'),
                  ),
                  SizedBox(height: responsive.hp(1.5)),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                            fontSize: responsive.ip(1.8),
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Metropolis'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          priceOld == "" ? "" : priceOld,
                          style: TextStyle(
                              fontSize: responsive.ip(1.4),
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough,
                              fontFamily: 'Metropolis'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsive.hp(2)),
                  Center(
                    child: Container(
                      width: responsive.wp(29),
                      height: responsive.hp(3.8),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(39, 136, 77, 1),
                        borderRadius: BorderRadius.all(Radius.circular(
                                45) //                 <--- border radius here
                            ),
                      ),
                      child: inStock > 0
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: responsive.ip(0.5),
                                      bottom: responsive.ip(0.4),
                                      top: responsive.ip(0.4)),
                                  child: Container(
                                    width: responsive.hp(3),
                                    height: responsive.hp(3),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    child: Container(
                                      child: const Icon(
                                        Icons.minimize_rounded,
                                        color: Color.fromRGBO(39, 136, 77, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('1',
                                    style: TextStyle(
                                        fontSize: responsive.ip(1.4),
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Metropolis')),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: responsive.ip(0.5),
                                      bottom: responsive.ip(0.4),
                                      top: responsive.ip(0.4)),
                                  child: Container(
                                    width: responsive.hp(3),
                                    height: responsive.hp(3),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    child: const Icon(
                                      Icons.add,
                                      color: Color.fromRGBO(39, 136, 77, 1),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Center(
                              child: Text('Agregar',
                                  style: TextStyle(
                                      fontSize: responsive.ip(1.7),
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Metropolis')),
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
