part of 'text_bloc3_bloc.dart';

@immutable
class TextBloc3State {
  final String? text;

  const TextBloc3State(this.text);
  const TextBloc3State.library() : this('Library');
  const TextBloc3State.perpustakaan() : this('Perpsutakaan');
}

final class TextBloc3Initial extends TextBloc3State {
  const TextBloc3Initial({String text = 'Library'}) : super(text);
}
