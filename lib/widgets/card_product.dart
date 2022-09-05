import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/fonts.dart';
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
            Stack(children: [
              Image.asset(pathImage),
              inStock > 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 7, top: 5),
                      child: Container(
                        width: responsive.wp(24),
                        height: responsive.hp(2.5),
                        decoration: const BoxDecoration(
                          color: AppColorPalette.green,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  45) //                 <--- border radius here
                              ),
                        ),
                        child: Center(
                          child: Text('En oferta',
                              style: TextStyle(
                                  fontSize: responsive.ip(1.2),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Metropolis')),
                        ),
                      ),
                    )
                  : SizedBox(),
            ]),
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
                    style: AppTypographyPalette.description
                        .copyWith(fontSize: responsive.ip(1.5)),
                  ),
                  SizedBox(height: responsive.hp(0.5)),
                  Text(
                    presentation,
                    style: AppTypographyPalette.presentation
                        .copyWith(fontSize: responsive.ip(1.4)),
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
                        color: AppColorPalette.green,
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
