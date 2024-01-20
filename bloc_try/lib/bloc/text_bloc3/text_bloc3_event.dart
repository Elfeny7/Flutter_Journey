part of 'text_bloc3_bloc.dart';

enum TextToo { toLibrary, toPerpustakaan }

@immutable
sealed class TextBloc3Event {
  const TextBloc3Event();
}

class ChangeTextPressed3 extends TextBloc3Event {
  final TextToo textTo;
  const ChangeTextPressed3(this.textTo);
}
