import 'package:arco_flutter/components/button/arco_button.dart';
import 'package:arco_flutter/shape/button_shape.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ArcoButton(
            "普通按钮",
            textColor: Colors.black,
            onPressed: () {},
          ),
          ArcoButton(
            "胶囊按钮",
            shape: ArcoButtonShape.pill,
            onPressed: () {},
          ),
          ArcoButton(
            "矩形按钮",
            shape: ArcoButtonShape.rect,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
