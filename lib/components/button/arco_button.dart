import 'package:arco_flutter/shape/button_shape.dart';
import 'package:flutter/material.dart';

class ArcoButton extends StatefulWidget {
  final String? text;
  final Widget? child;
  final VoidCallback? onPressed;
  final ArcoButtonShape? shape;
  const ArcoButton(
    this.text, {
    Key? key,
    required this.onPressed,
    this.child,
    this.shape,
  })  : assert(child != null || text != null),
        super(key: key);

  @override
  State<ArcoButton> createState() => _ArcoButtonState();
}

class _ArcoButtonState extends State<ArcoButton> {
  Widget? child;
  MaterialStateProperty<OutlinedBorder?>? shape;
  void Function()? onPressed;
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
