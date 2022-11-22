import 'package:flutter/material.dart';

enum ArcoButtonShape {
  normal,
  pill,
  rect,
}

getButtonMaterialShapeProperty(ArcoButtonShape? shape) {
  switch (shape) {
    case ArcoButtonShape.normal:
      return MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );
    case ArcoButtonShape.pill:
      return MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(400),
        ),
      );
    case ArcoButtonShape.rect:
      return MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      );
    default:
      return MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );
  }
}
