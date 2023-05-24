void main(List<String> args) {
  int yas = 43;
  print(yas);
  yas = 44;
  print(yas);

  num yil = 2023;
  print(yil);

  double sayi = 3.2;
  print(sayi);

  int yuvarla = sayi.toInt();
  print(yuvarla);

  var sayi2 = 56; // bu artık bir integer değer.
  print(sayi2);

  int numara =
      0; //null safety demek bu değerlere baştan bir değer alması gerekir. böylece null değer alamaz.
  print(numara * 12);

  int? s1 = null;
  s1 = 3;
  print(s1 + 5);

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);
}
