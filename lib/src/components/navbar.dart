import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';

class Navbar extends Widget {
  final Map<String, dynamic> props = {};

  Navbar(
      {Iterable<Node> children: const [],
      Map<String, dynamic> props: const {}}) {
    this.props.addAll(props ?? {});
    this.children.addAll(children ?? []);
  }

  @override
  Node render() {
    return new NodeBuilder('nav', attributes: props)
        .addClass('navbar')
        .setAttribute('role', 'navigation')
        .setAttribute('aria-label', 'main navigation')
        .changeChildren(children)
        .build();
  }
}
