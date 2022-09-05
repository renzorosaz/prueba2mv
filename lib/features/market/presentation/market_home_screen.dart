import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2_mv/features/market/presentation/widgets/statesComp/checkbox_state.dart';
import 'package:prueba2_mv/widgets/card_product.dart';

import '../../../style/fonts.dart';
import '../../../util/responsive.dart';
import '../../../widgets/buttons/button_filter.dart';
import '../../../widgets/buttons/button_topic.dart';
import '../../../widgets/modals/modal_select_brand_component.dart';
import 'bloc/brands/brand_bloc.dart';
import 'bloc/topic/topic_bloc.dart';
import 'bloc/topic/topic_bloc.dart';
import 'bloc/topic/topic_event.dart';
import 'widgets/appBar/appBarMarket_component.dart';

class MarketHomeScreen extends StatelessWidget {
  MarketHomeScreen({Key? key}) : super(key: key);

  final listTopics = [
    SelectTopicModal(title: "Etiqueta a", id: 0, value: false),
    SelectTopicModal(title: "Etiqueta bc", id: 1, value: false),
    SelectTopicModal(title: "Snacks", id: 2, value: false),
    SelectTopicModal(title: "Etiqueta bc", id: 3, value: false),
  ];

  String selected = "";

  @override
  Widget build(BuildContext context) {
    final brandBloc = BlocProvider.of<BrandBloc>(context);

    final responsive = Responsive.of(context);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: responsive.ip(0.7), top: responsive.ip(2.2)),
        child: SingleChildScrollView(
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
                    Column(
                      children: [
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
                                                topRight:
                                                    Radius.circular(28))));
                                  },
                                  child: ButtonFilter(
                                      title: "Marcas",
                                      pathImage:
                                          "assets/icons/ic_arrow_down.png",
                                      notifications: true),
                                );
                              },
                            ),
                            //colocar
                          ],
                        ),
                        SizedBox(height: responsive.hp(1)),
                        SizedBox(
                          width: 400,
                          height: 30,
                          child: ListView.separated(
                              separatorBuilder: (_, d) {
                                return SizedBox(width: 5);
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: listTopics.length,
                              itemBuilder: (context, index) {
                                return BlocBuilder<TopicBloc, String>(
                                    builder: (context, selectOption) {
                                  print("valor de seleccion " + selectOption);
                                  return BlocBuilder<TopicBloc, String>(
                                      builder: (context, state) {
                                    print("valor de estado " + state);
                                    // if (selectOption == index) {
                                    //   print("se pinta");
                                    // } else {
                                    //   print("no se pinta");
                                    // }
                                    return ButtonTopic(
                                      index: index,
                                      lstTopic: listTopics,
                                      title: listTopics[index].title,
                                      topic: listTopics[index],
                                    );
                                    // return Row(
                                    //   crossAxisAlignment:
                                    //       CrossAxisAlignment.start,
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceAround,
                                    //   children: [
                                    //     GestureDetector(
                                    //       onTap: () {
                                    //         //toggleIcon = true;
                                    //         print(listTopics[index].title);
                                    //         print(listTopics[index].value);
                                    //         String topiSeleccionado =
                                    //             listTopics[index].title;
                                    //         print(topiSeleccionado);

                                    //         // topicBloc.add(ChangeTopic(
                                    //         //     topiSeleccionado.toString()));
                                    //       },
                                    //       child: ButtonTopic(
                                    //         title: listTopics[index].title,
                                    //         toggleIcon: toggleIcon,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // );
                                  });
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(height: responsive.hp(0.5)),
                    Container(
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
