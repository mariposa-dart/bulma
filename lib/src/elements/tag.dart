import 'dart:async';
import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';

class Tags extends Widget {
  final bool hasAddons;

  final Map<String, dynamic> props = {};

  Tags(
      {this.hasAddons: false,
      Iterable<Node> children: const [],
      Map<String, dynamic> props: const {}}) {
    this.props.addAll(props ?? {});
    this.children.addAll(children ?? []);
  }

  @override
  Node render() {
    var builder = new NodeBuilder('div', attributes: props).addClass('tags');

    if (hasAddons) {
      builder = builder.addClass('has-addons');
    }

    builder = builder.changeChildren(children);
    return builder.build();
  }
}

class Tag extends Widget {
  final Node child;

  final void Function() onDelete;

  final Map<String, dynamic> props = {};

  StreamSubscription _onClick;

  Tag({this.child, this.onDelete, Map<String, dynamic> props: const {}}) {
    assert(child != null || onDelete != null);
    this.props.addAll(props ?? {});
  }

  @override
  void afterRender(AbstractElement element) {
    if (onDelete != null) {
      _onClick = element.listen('click', (_) => onDelete());
    }
  }

  @override
  void beforeDestroy(AbstractElement element) {
    _onClick?.cancel();
  }

  @override
  Node render() {
    var builder =
        new NodeBuilder(onDelete != null ? 'a' : 'span', attributes: props)
            .addClass('tag');

    if (onDelete != null) {
      builder = builder.addClass('is-delete');
    }

    builder = builder.addChild(child);
    return builder.build();
  }
}
