import 'package:record14/person.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group("Mengecek Class Person", () {
    Person p;
    p = Person();

    test("inisialisasi Objek Person", () {
      expect(p.name, equals("no name"));
      expect(p.age, equals(0));
    });

    test("Age Gaboleh - ", () {
      p.age = -25;
      expect(p.age, isPositive);
    });

    test("Angka keberuntungan harus 3 buah bilangan positif", () {
      expect(p.luckyNumbers,
          allOf([hasLength(equals(3)), isNot(anyElement(isNegative))]));
    });

    setUp(() {
      print("set up");
    });

    tearDown(() {
      print("tear down");
    });

  });


}