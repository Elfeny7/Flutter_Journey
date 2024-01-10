import 'package:bloc/bloc.dart';

// enum TextEvent { to_library, to_perpustakaan }

class TextEvent {
  final String? value;

  TextEvent({this.value});
}

// final class ChangeTextPressed extends TextEvent {}
final class ChangeTextPressed extends TextEvent {
  ChangeTextPressed({String? value}) : super(value: value);
}

class TextBloc extends Bloc<TextEvent, String> {
  TextBloc() : super("Library") {
    on<ChangeTextPressed>((event, emit) {
      emit(event.value!);
    });
  }
}
