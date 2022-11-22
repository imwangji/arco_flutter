import 'package:arco_flutter/components/button/arco_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("should render button", (tester) async {
    const buttonKey = Key('normalButton');
    ArcoButton arcoButton = ArcoButton(
      'click me',
      key: buttonKey,
      onPressed: () {},
    );
    await tester.pumpWidget(TestApp(arcoButton));
    expect(find.text("click me"), findsOneWidget);
  });

  testWidgets("should trigger onPressed callback", (tester) async {
    int value = 0;
    const buttonKey = Key('normalButton');
    ArcoButton arcoButton = ArcoButton(
      'click me',
      key: buttonKey,
      onPressed: () {
        value = 1;
      },
    );
    await tester.pumpWidget(TestApp(arcoButton));
    await tester.tap(find.byKey(buttonKey));
    expect(value, equals(1));
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
