import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/item_list.dart';

void main() {
  testWidgets('Item list smoke test', (WidgetTester tester) async {
    // Executing the ItemList test
    await tester.pumpWidget(ItemList(
      items: List<String>.generate(
          1000,
          (index) => "Item $index",
      ),
    ));

    // finding all widgets needed
    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey('item_501_text'));

    // Executing the finding item in the list widget
    await tester.scrollUntilVisible(
      itemFinder,
      500.0,
      scrollable: listFinder,
    );

    expect(itemFinder, findsOneWidget);
    expect(listFinder, findsOneWidget);

  });
}