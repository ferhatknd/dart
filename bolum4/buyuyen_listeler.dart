void main(List<String> args) {
  List<int?> sayilar = [];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  print(sayilar);
  print(sayilar.length);
  sayilar.length = 100;

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(11);
  sayilar2.add(12);
  sayilar2.add(13);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3.add(11);
  print(sayilar3);
  print(sayilar3.length);

  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  // bu üstteki ikisi aynı aslında.
  sayilar4.add(1);
  sayilar5.add(1);
  print(sayilar4);
}
