import 'dart:html';
import 'package:mariposa/dom.dart' as mariposa;
import 'widgets/example_app.dart';

void main() {
  var container = document.querySelector('#app');
  var exampleApp = () {
    return ExampleApp();
  };

  mariposa.render(exampleApp, container);
}
