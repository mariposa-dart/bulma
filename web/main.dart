import 'dart:html';
import 'package:mariposa/dom.dart' as mariposa;
import 'src/state.dart';
import 'widgets/gallery_app.dart';

void main() {
  var container = document.querySelector('#app');
  var state = new GalleryAppState();

  var galleryApp = () {
    return GalleryApp(
      state: state,
    );
  };

  mariposa.render(galleryApp, container);
}
