void main(List<String> args) {

  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 4;
  sayilar[1] = 1;
  sayilar[2] = 9;
  print(sayilar);
  print(sayilar.length);

  List<dynamic> karisik = List<dynamic>.filled(5, 0);
  karisik[0] = 'fer';
  karisik[1] = 5;
  karisik[3] = true;

  print(karisik);
}
