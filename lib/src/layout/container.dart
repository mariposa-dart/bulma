import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';

class Container extends Widget {
  final bool isFluid;

  final bool isWideScreen;

  final bool isFullHd;

  final Map<String, dynamic> props = {};

  Container(
      {this.isFluid: false,
      this.isWideScreen: false,
      this.isFullHd: false,
      Iterable<Node> children: const [],
      Map<String, dynamic> props: const {}}) {
    this.props.addAll(props ?? {});
    this.children.addAll(children ?? []);
  }

  @override
  Node render() {
    var builder =
        new NodeBuilder('div').addClass('container').changeChildren(children);

    if (isFluid) {
      builder = builder.addClass('is-fluid');
    }

    if (isWideScreen) {
      builder = builder.addClass('is-widescreen');
    }

    if (isFullHd) {
      builder = builder.addClass('is-fullhd');
    }

    return builder.build();
  }
}
