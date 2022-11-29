import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      const number = 35;
      favorites.add(number);
      expect(favorites.items, contains(number));
      favorites.remove(number);
      expect(favorites.items, isNot(contains(number)));
    });
  });
}
