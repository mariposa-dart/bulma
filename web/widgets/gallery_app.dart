import 'dart:async';
import 'package:html_builder/elements.dart';
import 'package:mariposa/mariposa.dart';
import 'package:meta/meta.dart';
import '../src/state.dart';
import 'gallery_app_navbar.dart';

class GalleryApp extends ContextAwareWidget {
  final GalleryAppState state;

  GalleryApp({@required this.state});

  @override
  Node contextAwareRender(RenderContext context) {
    return div(
      c: [
        GalleryAppNavbar(),
      ],
    );
  }
}
