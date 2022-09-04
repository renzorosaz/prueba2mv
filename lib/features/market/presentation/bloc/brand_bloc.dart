import 'brand_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandBloc extends Bloc<BrandEvent, String> {
  //El valor inicial del radio es ""
  BrandBloc() : super("") {
    on<ChangeBrand>((event, emit) {
      emit(event.value);
    });
  }
}
