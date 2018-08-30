import 'package:mariposa/mariposa.dart';
import 'package:mariposa_bulma/mariposa_bulma.dart';

class GalleryAppNavbar extends Widget {
  @override
  Node render() {
    return Navbar(
      children: [
        NavbarBrand(
          children: [
            NavbarItem(
              child: TextNode('Mariposa Bulma Gallery'),
            ),
            NavbarBurger(),
          ],
        ),
      ],
    );
  }
}
