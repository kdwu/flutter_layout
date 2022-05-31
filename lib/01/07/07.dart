import 'package:flutter/material.dart';

void main() {
  runApp(CustomSingleChildLayout(
    delegate: DiyDelegate(),
    child: const ColoredBox(color: Colors.blue),
  ),
  );
}

class DiyDelegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(Size(100, 100));
  }
}
