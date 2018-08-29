import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';
import 'package:meta/meta.dart';

class Icon extends Widget {
  final String name;

  final String type;

  final bool isSmall;

  final bool isMedium;

  final bool isLarge;

  final bool isFullWidth;

  final bool isBordered;

  final bool isPulsing;

  final bool isInverse;

  final String transform;

  final String stack;

  final Map<String, dynamic> props = {};

  Icon(
      {@required this.name,
      this.type: IconTypes.fontAwesome,
      this.isSmall: false,
      this.isMedium: false,
      this.isLarge: false,
      this.isFullWidth: false,
      this.isBordered: false,
      this.isPulsing: false,
      this.isInverse: false,
      this.transform,
      this.stack,
      Map<String, dynamic> props: const {}}) {
    this.props.addAll(props ?? {});
  }

  @override
  Node render() {
    var spanBuilder = new NodeBuilder('span', attributes: props).addClass('icon');
    var iBuilder =
        new NodeBuilder('i', attributes: {'class': '$type fa-$name'});

    if (isSmall) {
      spanBuilder = spanBuilder.addClass('is-small');
    }

    if (isMedium) {
      spanBuilder = spanBuilder.addClass('is-medium');
    }

    if (isLarge) {
      spanBuilder = spanBuilder.addClass('is-large');
    }

    if (isFullWidth) {
      iBuilder = iBuilder.addClass('fa-fw');
    }

    if (isBordered) {
      iBuilder = iBuilder.addClass('fa-border');
    }

    if (isPulsing) {
      iBuilder = iBuilder.addClass('fa-pulse');
    }

    if (isInverse) {
      iBuilder = iBuilder.addClass('fa-inverse');
    }

    if (transform != null) {
      iBuilder = iBuilder.setAttribute('data-fa-transform', transform);
    }

    if (stack != null) {
      iBuilder = iBuilder.addClass('fa-stack-$stack');
    }

    spanBuilder = spanBuilder.addChild(iBuilder.build());

    return spanBuilder.build();
  }
}

abstract class IconTypes {
  static const String fontAwesome = 'fa',
      fontAwesome5 = 'fas',
      materialDesignIcons = 'mdi';
}
