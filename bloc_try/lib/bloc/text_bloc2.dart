import 'package:bloc/bloc.dart';

enum TextTo { toLibrary, toPerpustakaan }

class TextEvent {
  final TextTo textTo;

  TextEvent({required this.textTo});
}

final class ChangeTextPressed2 extends TextEvent {
  ChangeTextPressed2({required TextTo textTo}) : super(textTo: textTo);
}

class TextBloc2 extends Bloc<TextEvent, String> {
  TextBloc2() : super("Library") {
    on<ChangeTextPressed2>(
      (event, emit) {
        if (event.textTo != TextTo.toLibrary) {
          emit("Perpustakaan");
        } else {
          emit("Library");
        }
      },
    );
  }
}
