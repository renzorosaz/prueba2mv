import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2_mv/features/market/presentation/bloc/topic/topic_event.dart';

import '../../features/market/presentation/bloc/topic/topic_bloc.dart';
import '../../features/market/presentation/widgets/statesComp/checkbox_state.dart';
import '../../style/colors.dart';
import '../../style/fonts.dart';
import '../../util/responsive.dart';

class ButtonTopic extends StatefulWidget {
  String title;

  SelectTopicModal topic;
  List<SelectTopicModal> lstTopic;
  int index;
  ButtonTopic(
      {Key? key,
      required this.title,
      required this.index,
      required this.topic,
      required this.lstTopic})
      : super(key: key);

  @override
  State<ButtonTopic> createState() => _ButtonTopicState();
}

class _ButtonTopicState extends State<ButtonTopic> {
  int selectedIndex = 0;

  @override
  void initState() {
    //  isActive(widget.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final topicBloc = BlocProvider.of<TopicBloc>(context);

    final responsive = Responsive.of(context);
    return GestureDetector(
      onTap: () {
        print(widget.index);
        topicBloc.add(ChangeTopic(widget.index.toString()));

        // setState(() {
        //   for (var element in widget.lstTopic) {
        //     element.value = false;
        //   }
        //   //widget.index = value;

        //   selectedIndex = widget.index;
        // });

        print(widget.index);
      },
      child: Container(
          decoration: BoxDecoration(
            color: selectedIndex == widget.index ? Colors.white : Colors.black,
            border: Border.all(
              width: 1.0,
              // ignore: unrelated_type_equality_checks
              color: Colors.black,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: SizedBox(
              child: Padding(
            padding: EdgeInsets.only(
                right: responsive.ip(1),
                left: responsive.ip(1),
                top: responsive.ip(1),
                bottom: responsive.ip(1)),
            child: Text(widget.topic.title,
                style: AppTypographyPalette.textFont300.copyWith(
                  fontSize: responsive.ip(1.39),
                  color: selectedIndex == widget.index ? Colors.black : null,
                )),
          ))),
    );
  }
}
