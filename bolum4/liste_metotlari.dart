void main(List<String> args) {
  List<int> sayilar = [10, 8, 4, 11, 2, 3, 25, 77, 8];
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }
  print("Boş mu?" + sayilar.isEmpty.toString());
  print("Eleman sayısı: ${sayilar.length}");
  print("Ters eleman: ${sayilar.reversed}");

  sayilar.add(32);
  print(sayilar);
  print(sayilar.length);
  sayilar.remove(3); //listedeki ilk 3 kaydını siliyor
  print(sayilar);
  print(sayilar.length);
  sayilar.removeAt(8);
  print(sayilar);
  print(sayilar.length);

  // sayilar.clear(); // listeyi komple boşaltır.
  if (sayilar.contains(77)) {
    print("listede 77 var");
  } else {
    print("listede 77 yok");
  }

  print(sayilar.elementAt(0)); // listenin 0 ıncı index teki elemanı getirdi.
  print(sayilar
      .indexOf(8)); // listenin ilk 8 değeri olan elemanın indexini getirdi.
  sayilar.shuffle();
  print(sayilar);

  // https://api.flutter.dev/flutter/dart-core/List-class.html
}
