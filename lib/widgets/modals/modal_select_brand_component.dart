import 'package:flutter/material.dart';

import '../../util/responsive.dart';

class ModalSelectedBrand extends StatefulWidget {
  const ModalSelectedBrand({Key? key}) : super(key: key);

  @override
  State<ModalSelectedBrand> createState() => _ModalSelectedBrandState();
}

class _ModalSelectedBrandState extends State<ModalSelectedBrand> {
  List<String> listBrands = [
    "Lakanto",
    "Nutrishake",
    "Marcan comercial",
    "Snacksanto",
    "Lakanto",
    "Nutrishake",
  ];
  final Map<String, bool> _map = {};
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Container(
      width: 345,
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 348, right: 14),
              child: Icon(Icons.close),
            ),
            Text("Marcas",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const SizedBox(height: 14),
            Expanded(
              child: ListView.builder(
                itemCount: listBrands.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 400,
                    height: 58,
                    child: ListView.builder(itemBuilder: (_, i) {
                      return Container(
                        width: 345,
                        height: 52,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(listBrands[index]),
                              Container(
                                width: responsive.wp(5),
                                height: responsive.hp(2.5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey, spreadRadius: 2),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

//TODO:
class BrandButton extends StatefulWidget {
  const BrandButton({
    Key? key,
    //required this.responsive,
    required this.title,
    required this.listSide,
    // required this.siteBloc,
  }) : super(key: key);

  //final Responsive responsive;
  final String title;
  final String listSide;
  //final SiteBloc siteBloc;

  @override
  State<BrandButton> createState() => _BrandButtonState();
}

class _BrandButtonState extends State<BrandButton> {
  //Para que se muetre siempre el color
  bool toggleIcon = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      //widget.responsive.wp(99),
      height: 52,
      //widget.responsive.hp(2),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
