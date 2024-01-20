part of 'text_bloc3_bloc.dart';

enum TextTo { toLibrary, toPerpustakaan }

@immutable
sealed class TextBloc3Event {
  final TextTo textTo;

  const TextBloc3Event(this.textTo);
}
