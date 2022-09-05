import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2_mv/features/market/presentation/widgets/checkbox/checkbox_state.dart';
import 'package:prueba2_mv/style/fonts.dart';

import '../../features/market/presentation/bloc/brands/brand_bloc.dart';
import '../../features/market/presentation/bloc/brands/brand_event.dart';
import '../../style/colors.dart';
import '../../util/responsive.dart';

class ModalSelectedBrand extends StatefulWidget {
  final BrandBloc brandBloc;

  const ModalSelectedBrand({Key? key, required this.brandBloc})
      : super(key: key);

  @override
  State<ModalSelectedBrand> createState() => _ModalSelectedBrandState();
}

class _ModalSelectedBrandState extends State<ModalSelectedBrand> {
  final listBrands = [
    CheckBoxState(title: "Lakanto"),
    CheckBoxState(title: "Lamborgini"),
    CheckBoxState(title: "Marcan comercial"),
    CheckBoxState(title: "Snacksanto"),
    CheckBoxState(title: "Brutoni"),
    CheckBoxState(title: "Nutrishake"),
  ];
  bool toggleIcon = false;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Container(
        width: 345,
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 19, top: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 336, right: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: AppColorPalette.grey.withOpacity(0.7),
                    child: Icon(
                      size: 23,
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text("Marcas",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const SizedBox(height: 14),
            Container(
                width: 500,
                height: 350,
                child: ListView.builder(
                    itemCount: listBrands.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(listBrands[index].title,
                              style: AppTypographyPalette.titleSub.copyWith(
                                  fontSize: responsive.ip(1.3),
                                  fontWeight: FontWeight.w500)),
                          BlocBuilder<BrandBloc, String>(
                            builder: (context, state) {
                              return Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                activeColor: listBrands[index].value == true
                                    ? Colors.green
                                    : Colors.grey,
                                value: listBrands[index].value,
                                onChanged: (value) {
                                  setState(() {
                                    listBrands[index].value = value!;
                                  });
                                  widget.brandBloc
                                      .add(ChangeBrand(value.toString()));
                                },
                              );
                            },
                          ),
                        ],
                      );
                    })),
            Container(
              width: 450,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: AppColorPalette.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      20,
                    ))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Filtrar ( 74 productos)',
                  style: AppTypographyPalette.titleSub.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: responsive.ip(2)),
                ),
              ),
            )
          ]),
        ));
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
