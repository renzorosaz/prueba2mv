import 'package:flutter/material.dart';

class ButtonTopic extends StatelessWidget {
  String title;
  bool enable;
  ButtonTopic({Key? key, required this.title, required this.enable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: enable ? Colors.black : null,
          border: Border.all(
            width: 1.0,
            color: enable
                ? Colors.black
                : const Color.fromARGB(255, 138, 138, 141),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: SizedBox(
            child: Padding(
          padding:
              const EdgeInsets.only(right: 12, left: 12, top: 8, bottom: 8),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Metropolis',
                color: enable ? Colors.white : Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w300),
          ),
        )));
  }
}
