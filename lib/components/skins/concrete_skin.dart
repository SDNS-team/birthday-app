import 'skin.dart';

/// For widgets that implement UI for a concrete skin and should be aware of it.
mixin ConcreteSkin {
  Skin get skin;
}
