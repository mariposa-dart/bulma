import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';

class NavbarBrand extends Widget {
  final Map<String, dynamic> props = {};

  NavbarBrand(
      {Iterable<Node> children: const [],
      Map<String, dynamic> props: const {}}) {
    this.props.addAll(props ?? {});
    this.children.addAll(children ?? []);
  }

  @override
  Node render() {
    return new NodeBuilder('div', attributes: props)
        .addClass('navbar-brand')
        .changeChildren(children)
        .build();
  }
}
