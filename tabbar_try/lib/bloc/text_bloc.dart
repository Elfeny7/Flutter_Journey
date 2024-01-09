import 'package:bloc/bloc.dart';

enum TextEvent { to_buy, to_sell }

class TextBloc extends Bloc<TextEvent, String> {
  TextBloc(String initialState) : super(initialState);

  @override
  Stream<String> mapEventToState(TextEvent event) async* {
    if (event == TextEvent.to_buy) {
      yield 'Buying...';
    } else if (event == TextEvent.to_sell) {
      yield 'Selling...';
    }
  }
}
