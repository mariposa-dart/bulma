import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';

class Columns extends Widget {
  final bool isGapless;

  final bool isMultiline;

  final bool isMobile;

  final bool isCentered;

  final Map<String, dynamic> props = {};

  Columns(
      {this.isGapless: false,
      this.isMultiline: false,
      this.isMobile: false,
      this.isCentered: false,
      Iterable<Node> children: const [],
      Map<String, dynamic> props: const {}}) {
    this.props.addAll(props ?? {});
    this.children.addAll(children ?? []);
  }

  @override
  Node render() {
    var builder =
        new NodeBuilder('div').addClass('columns').changeChildren(children);

    if (isGapless) {
      builder = builder.addClass('is-gapless');
    }

    if (isMultiline) {
      builder = builder.addClass('is-multiline');
    }

    if (isMobile) {
      builder = builder.addClass('is-mobile');
    }

    if (isCentered) {
      builder = builder.addClass('is-centered');
    }

    return builder.build();
  }
}
