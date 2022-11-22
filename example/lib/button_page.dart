import 'package:arco_flutter/components/button/arco_button.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ArcoButton("按钮"),
        ],
      ),
    );
  }
}
