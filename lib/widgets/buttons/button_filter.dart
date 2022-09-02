import 'package:flutter/material.dart';

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
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(244, 244, 244, 1),
              border: Border.all(
                width: 2.0,
                color: const Color.fromRGBO(244, 244, 244, 1),
              ),
              borderRadius: const BorderRadius.all(
                  Radius.circular(10) //                 <--- border radius here
                  ),
            ),
            child: SizedBox(
                width: 179,
                height: 41,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500),
                        ),
                        notifications == true
                            ? Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  decoration: new BoxDecoration(
                                    color: Color.fromRGBO(39, 136, 77, 1),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                            : SizedBox()
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
