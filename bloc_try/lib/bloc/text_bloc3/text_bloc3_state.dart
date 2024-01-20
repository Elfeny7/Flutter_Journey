part of 'text_bloc3_bloc.dart';

@immutable
class TextBloc3State {
  final String text;

  const TextBloc3State(this.text);
  const TextBloc3State.library() : this('Library');
  const TextBloc3State.perpustakaan() : this('Perpsutakaan');
}
