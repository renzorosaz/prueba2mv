import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2_mv/widgets/card_product.dart';

import '../../../util/responsive.dart';
import '../../../widgets/buttons/button_filter.dart';
import '../../../widgets/buttons/button_topic.dart';
import '../../../widgets/modals/modal_select_brand_component.dart';
import 'bloc/brands/brand_bloc.dart';
import 'bloc/topic/topic_bloc.dart';
import 'bloc/topic/topic_bloc.dart';
import 'widgets/appBar/appBarMarket_component.dart';

class MarketHomeScreen extends StatelessWidget {
  const MarketHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brandBloc = BlocProvider.of<BrandBloc>(context);
    final responsive = Responsive.of(context);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: responsive.ip(0.7), top: responsive.ip(2.2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarMarketComponent(),
            //body
            Container(
              padding: EdgeInsets.only(
                  left: responsive.ip(0.7), top: responsive.ip(2.5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      child: Text(
                    "Snacks",
                    style: TextStyle(
                        fontSize: responsive.ip(3.85),
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(height: responsive.hp(1.5)),
                  Row(
                    children: [
                      ButtonFilter(
                          title: "Ordenar",
                          pathImage: "assets/icons/ic_shape.png",
                          notifications: false),
                      SizedBox(width: responsive.wp(5)),
                      BlocBuilder<BrandBloc, String>(
                        builder: (context, selecOption) {
                          return GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.white,
                                  enableDrag: true,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setState) {
                                        return ModalSelectedBrand(
                                            brandBloc: brandBloc);
                                      },
                                    );
                                  },
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(28),
                                          topRight: Radius.circular(28))));
                            },
                            child: ButtonFilter(
                                title: "Marcas",
                                pathImage: "assets/icons/ic_arrow_down.png",
                                notifications: true),
                          );
                        },
                      )
                    ],
                  ),
                  SizedBox(height: responsive.hp(3)),
                  // SizedBox(width: responsive.wp(5)),
                  //     BlocBuilder<BrandBloc, String>(
                  //       builder: (context, selecOption) {
                  //         return GestureDetector(
                  //           onTap: () {
                  //             showModalBottomSheet(
                  //                 context: context,
                  //                 backgroundColor: Colors.white,
                  //                 enableDrag: true,
                  //                 builder: (BuildContext context) {
                  //                   return StatefulBuilder(
                  //                     builder: (BuildContext context,
                  //                         StateSetter setState) {
                  //                       return ModalSelectedBrand(
                  //                           brandBloc: brandBloc);
                  //                     },
                  //                   );
                  //                 },
                  //                 shape: const RoundedRectangleBorder(
                  //                     borderRadius: BorderRadius.only(
                  //                         topLeft: Radius.circular(28),
                  //                         topRight: Radius.circular(28))));
                  //           },
                  //           child: ButtonFilter(
                  //               title: "Marcas",
                  //               pathImage: "assets/icons/ic_arrow_down.png",
                  //               notifications: true),
                  //         );
                  //       },
                  //     )

                  BlocBuilder<TopicBloc, String>(
                      builder: (context, selecOption) {
                    return Row(
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
                    );
                  }),

                  SizedBox(height: responsive.hp(0.5)),
                  SingleChildScrollView(
                    child: Container(
                      width: responsive.wp(90),
                      height: responsive.hp(53.8),
                      child: GridView.count(
                          primary: false,
                          crossAxisCount: 2,
                          mainAxisSpacing: responsive.wp(2),
                          crossAxisSpacing: responsive.wp(1),
                          childAspectRatio: 0.58, //to change CARD HEIGHT
                          children: [
                            CardProduct(
                                pathImage: "assets/images/product1.png",
                                description:
                                    "Almendra Cubierta en Chocolate - Gozana",
                                presentation: "12 gr",
                                brand: "Gozana",
                                price: "S/ 15.00",
                                inStock: 10,
                                priceOld: "S/ 19.00"),
                            CardProduct(
                                pathImage: "assets/images/product4.png",
                                description:
                                    "Garbanzos Horneados Ajo y Cebolla - Gozana",
                                presentation: "90 gr",
                                brand: "Gozana Snacks",
                                price: "S/ 11.00",
                                inStock: 0,
                                priceOld: ""),
                            CardProduct(
                                pathImage: "assets/images/product3.png",
                                description: "Protein Pancake Super Protein",
                                presentation: "90 gr",
                                brand: "Gozana Snacks",
                                price: "S/ 11.00",
                                inStock: 0,
                                priceOld: ""),
                            CardProduct(
                                pathImage: "assets/images/product2.png",
                                description: "Cereal snack Flakes",
                                presentation: "90 gr",
                                brand: "Gozana Snacks",
                                price: "S/ 11.00",
                                inStock: 0,
                                priceOld: ""),
                          ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
