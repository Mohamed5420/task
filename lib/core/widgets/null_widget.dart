import 'package:flutter/widgets.dart';

class Nil extends Widget {
  const Nil({super.key});

  @override
  Element createElement() => _NilElement(this);
}

class _NilElement extends Element {
  _NilElement(Nil super.widget);

  @override
  void mount(Element? parent, dynamic newSlot) {
    assert(
    parent is! MultiChildRenderObjectElement,
    "You are using Nothing under a MultiChildRenderObjectElement.",
    );
    super.mount(parent, newSlot);
  }

  @override
  bool get debugDoingBuild => false;

  @override
  void performRebuild() {
    super.performRebuild();
  }
}

// you should not use nil in Column or ListView, you can use Sizedbox.shrink()
