import 'package:html_builder/elements.dart';
import 'package:html_builder/html_builder.dart';
import 'package:mariposa/mariposa.dart';
import 'package:mariposa_bulma/mariposa_bulma.dart';
import 'package:zen/zen.dart';

class ExampleAppNavbar extends Widget {
  @override
  Node render() {
    return z('div', [
      Navbar(
        children: [
          NavbarBrand(
            children: [
              NavbarItem.link(
                href: '#/',
                child: img(
                  src: 'https://angel-dart.github.io/assets/images/logo.png',
                  alt: 'Angel',
                ),
              ),
              NavbarItem(
                child: text('Gallery'),
              ),
              NavbarBurger(),
            ],
          ),
        ],
      ),
    ]);
  }
}
