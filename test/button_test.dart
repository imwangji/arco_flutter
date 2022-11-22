import 'package:arco_flutter/components/button/arco_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("should render button", (tester) async {
    const buttonKey = Key('normalButton');
    ArcoButton arcoButton = const ArcoButton(
      'click me',
      key: buttonKey,
    );
    await tester.pumpWidget(TestApp(arcoButton));
    expect(find.text("click me"), findsOneWidget);
  });
}

class TestApp extends StatelessWidget {
  final Widget? child;
  const TestApp(
    this.child, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: child,
        ),
      ),
    );
  }
}
