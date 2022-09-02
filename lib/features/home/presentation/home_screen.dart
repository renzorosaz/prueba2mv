import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
