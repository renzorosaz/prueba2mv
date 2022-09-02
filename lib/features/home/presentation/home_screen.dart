import 'package:flutter/material.dart';
import 'package:prueba2_mv/widgets/card_product.dart';

import '../../../widgets/buttons/button_filter.dart';
import '../../../widgets/buttons/button_topic.dart';

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
                ButtonFilter(
                    title: "Ordenar",
                    pathImage: "assets/icons/ic_shape.png",
                    notifications: false),
                const SizedBox(width: 12),
                ButtonFilter(
                    title: "Marcas",
                    pathImage: "assets/icons/ic_arrow_down.png",
                    notifications: true)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonTopic(
                  title: "Etiqueta a",
                  enable: false,
                ),
                ButtonTopic(title: "Etiqueta bc", enable: false),
                ButtonTopic(title: "Snacks", enable: true),
                ButtonTopic(title: "Etiqueta b", enable: false),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: Container(
                height: 450,
                width: 384,
                child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    // padding: const EdgeInsets.only(top: 16, right: 11, left: 11),
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.5,
                    crossAxisSpacing: 0.5,
                    childAspectRatio: 0.69, //to change CARD HEIGHT
                    children: [
                      CardProduct(
                          pathImage: "assets/images/product1.png",
                          description:
                              "Almendra Cubierta en Chocolate - Gozana",
                          presentation: "12 gr",
                          brand: "Gozana",
                          price: "S/ 15.00",
                          priceOld: "S/ 19.00"),
                      CardProduct(
                          pathImage: "assets/images/product2.png",
                          description:
                              "Garbanzos Horneados Ajo y Cebolla - Gozana",
                          presentation: "90 gr",
                          brand: "Gozana Snacks",
                          price: "S/ 11.00",
                          priceOld: ""),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
