class CheckBoxStateModal {
  final String title;
  bool value;

  CheckBoxStateModal({required this.title, this.value = false});
}

class SelectTopicModal {
  int id;
  final String title;

  SelectTopicModal({
    required this.id,
    required this.title,
  });
}
