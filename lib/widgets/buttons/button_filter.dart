import 'package:flutter/material.dart';

import '../../util/responsive.dart';

class ButtonFilter extends StatelessWidget {
  String pathImage;
  String title;
  bool notifications;

  ButtonFilter(
      {Key? key,
      required this.pathImage,
      required this.title,
      required this.notifications})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Row(
      children: [
        Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 230, 229, 229),
              borderRadius: BorderRadius.all(
                  Radius.circular(11) //                 <--- border radius here
                  ),
            ),
            child: SizedBox(
                width: responsive.wp(42),
                height: responsive.hp(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: responsive.ip(1.4),
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500),
                        ),
                        notifications == true
                            ? Padding(
                                padding:
                                    EdgeInsets.only(bottom: responsive.ip(1)),
                                child: Container(
                                  width: responsive.wp(1.3),
                                  height: responsive.hp(1.3),
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(39, 136, 77, 1),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                            : const SizedBox()
                      ],
                    ),
                    Image.asset(
                      pathImage,
                      width: 38,
                      height: 38,
                      color: Colors.black,
                    ),
                  ],
                )))
      ],
    );
  }
}
