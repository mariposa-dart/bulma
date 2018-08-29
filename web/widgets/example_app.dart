import 'package:html_builder/elements.dart';
import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';
import 'package:mariposa_bulma/mariposa_bulma.dart';
import 'package:zen/zen.dart';
import 'example_app_navbar.dart';

class ExampleApp extends Widget {
  @override
  Node render() {
    return z('example-app', [
      ExampleAppNavbar(),
      Container(children: [
        text('Hello!!!'),
        Tags(
          hasAddons: true,
          children: [
            Tag(
              props: {'class': 'is-primary'},
              child: text('chat'),
            ),
            Tag(
              props: {'class': 'is-dark'},
              child: text('on gitter'),
            ),
            Tag(
              onDelete: () {
                print('Deleted');
              },
            ),
          ],
        ),
        a(
          className: 'button is-primary',
          c: [
            Icon(
              name: 'spinner',
              isPulsing: true,
              props: {'style': 'margin-right: 2px'},
            ),
            text('Heyyy'),
          ],
        ),
        br(),
        br(),
        progress(
          className: 'progress is-warning',
          value: 35,
          max: 100,
        ),
      ])
    ]);
  }
}
