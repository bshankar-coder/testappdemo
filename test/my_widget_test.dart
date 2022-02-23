import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/main.dart';
import 'package:testapp/my_widget.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Building the widget
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

    // Create the Finders
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    // Using the `findsOneWidget` matcher provided by flutter_test to verify
    // that the Text Widgets appear exactly once in the widget tree
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });

  testWidgets('finds a Text Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Text('Hat'),
      ),
    ));

    final text = find.text('Hat');

    expect(text, findsOneWidget);
  });
  
  testWidgets('MyHomePage has a value', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
            ],
          ),
        ),
      ),
    ));

    final buttonText = find.text('You have pushed the button this many times:');

    expect(buttonText, findsOneWidget);
  });

  testWidgets('find a widget using a Key', (WidgetTester tester) async {
    const testScaffoldKey = Key('scaffoldValue');
    await tester.pumpWidget(MaterialApp(key: testScaffoldKey, home: Container(),));
    expect(find.byKey(testScaffoldKey), findsOneWidget);
  });

}

