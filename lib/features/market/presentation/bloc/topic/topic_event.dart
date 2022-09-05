abstract class TopicEvent {}

class ChangeTopic extends TopicEvent {
  final String value;
  ChangeTopic(this.value);
}
