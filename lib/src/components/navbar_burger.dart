import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';

class NavbarBurger extends Widget {
  final bool isActive;

  final Map<String, dynamic> props = {};

  NavbarBurger({this.isActive: false, Map<String, dynamic> props: const {}}) {
    this.props.addAll(props ?? {});
  }

  @override
  Node render() {
    var builder = new NodeBuilder('a', attributes: props)
        .addClass('navbar-burger')
        .setAttribute('role', 'button')
        .setAttribute('aria-label', 'menu')
        .setAttribute('aria-expanded', 'false');

    if (isActive) {
      builder = builder.addClass('is-active');
    }

    builder = builder.changeChildren(new List<Node>.generate(3, (_) {
      return h('span', {'aria-hidden': 'true'});
    }));

    return builder.build();
  }
}
