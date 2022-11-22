import 'package:flutter/material.dart';

class ArcoButton extends StatefulWidget {
  final String? text;
  final Widget? child;
  const ArcoButton(
    this.text, {
    Key? key,
    this.child,
  })  : assert(child != null || text != null),
        super(key: key);

  @override
  State<ArcoButton> createState() => _ArcoButtonState();
}

class _ArcoButtonState extends State<ArcoButton> {
  Widget? child;
  @override
  void initState() {
    super.initState();
    child = widget.text != null ? Text(widget.text!) : widget.child;
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {}, child: child!);
  }
}
