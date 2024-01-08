import 'dart:async';

enum TextEvent { to_ikmal, to_faris }

class TextBloc {
  String _text = "Ikmal";

  StreamController<TextEvent> _eventController = StreamController<TextEvent>();
  StreamSink<TextEvent> get eventSink => _eventController.sink;

  StreamController<String> _stateController = StreamController<String>();
  StreamSink<String> get _stateSink => _stateController.sink;
  Stream<String> get stateStream => _stateController.stream;

  void _mapEventToState(TextEvent _textEvent) {
    if (_textEvent == TextEvent.to_ikmal) {
      _text = "Ikmal";
    } else {
      _text = "Faris";
    }
    _stateSink.add(_text);
  }

  TextBloc() {
    _eventController.stream.listen((_mapEventToState));
  }

  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
