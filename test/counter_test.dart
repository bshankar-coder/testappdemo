import 'package:test/test.dart';
import 'package:testapp/counter.dart';

void main() {
  group('Counter',(){
    test('Value should start with 0', () {
      expect(Counter().value, 0);
    });
    test('Counter value should be incremented', () {
      final counterI = Counter();
      counterI.increment();
      expect(counterI.value, 1);
    });
    test('Counter value should be decremented', () {
      final counterD = Counter();
      counterD.decrement();
      expect(counterD.value, -1);
    });
  });
}