import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_bloc3_event.dart';
part 'text_bloc3_state.dart';

class TextBloc3Bloc extends Bloc<TextBloc3Event, TextBloc3State> {
  TextBloc3Bloc() : super(const TextBloc3State.library()) {
    on<ChangeTextPressed3>((event, emit) {
      if (event.textTo != TextToo.toLibrary) {
        emit(const TextBloc3State.perpustakaan());
      } else {
        emit(const TextBloc3State.library());
      }
    });
  }
}
