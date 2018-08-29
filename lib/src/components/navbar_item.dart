import 'package:html_builder/elements.dart';
import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';
import 'package:meta/meta.dart';

abstract class NavbarItem extends Widget {
  NavbarItem._();

  factory NavbarItem(
      {@required Node child, Map<String, dynamic> props: const {}}) {
    return new _NavbarItem(child, null);
  }

  factory NavbarItem.link(
      {@required String href,
      @required Node child,
      Map<String, dynamic> props: const {}}) {
    return new _NavbarItem(child, href);
  }
}

class _NavbarItem extends NavbarItem {
  final Node child;
  final String href;
  final Map<String, dynamic> props = {};

  _NavbarItem(this.child, this.href) : super._();

  @override
  Node render() {
    return new NodeBuilder(href != null ? 'a' : 'div', attributes: props)
        .addClass('navbar-item')
        .addChild(child)
        .setAttribute('href', href)
        .build();
  }
}

// class _DropdownNavbarItem extends NavbarItem {}
