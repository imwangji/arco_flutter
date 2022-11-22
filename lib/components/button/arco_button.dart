import 'package:arco_flutter/shape/button_shape.dart';
import 'package:flutter/material.dart';

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

class ArcoButton extends StatefulWidget {
  final String? text;
  final Widget? child;
  final VoidCallback? onPressed;
  final ArcoButtonShape? shape;
  final Color? backgroundColor;
  final Color? textColor;
  const ArcoButton(
    this.text, {
    Key? key,
    required this.onPressed,
    this.child,
    this.shape,
    this.backgroundColor,
    this.textColor,
  })  : assert(child != null || text != null),
        super(key: key);

  @override
  State<ArcoButton> createState() => _ArcoButtonState();
}

class _ArcoButtonState extends State<ArcoButton> {
  Widget? child;
  MaterialStateProperty<OutlinedBorder?>? shape;
  void Function()? onPressed;
  Color? backgroundColor;
  Color? textColor;
  @override
  void initState() {
    super.initState();
    child = widget.text != null ? Text(widget.text!) : widget.child;
    shape = getButtonMaterialShapeProperty(widget.shape);
    onPressed = widget.onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: shape,
      ),
      onPressed: onPressed,
      child: child!,
    );
  }
}
