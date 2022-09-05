import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba2_mv/features/market/presentation/bloc/topic/topic_bloc.dart';
import 'package:prueba2_mv/features/market/presentation/bloc/topic/topic_event.dart';

import '../../widgets/statesComp/checkbox_state.dart';

class TopicBloc extends Bloc<TopicEvent, String> {
  //El valor inicial del radio es ""
  TopicBloc() : super("") {
    on<ChangeTopic>((event, emit) {
      SelectTopicModal topicModal;

      emit(event.value);
      if (event.value == "true") {
        List<SelectTopicModal> topicModal = [];

        // topicModal.value = true;
      }
    });
  }
}
