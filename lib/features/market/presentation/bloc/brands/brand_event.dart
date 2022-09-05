abstract class BrandEvent {}

class ChangeBrand extends BrandEvent {
  final String value;

  ChangeBrand(this.value);
}
