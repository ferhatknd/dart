import 'dart:io';

void main(List<String> args) {
  print("adınızı girin:");
  String? isim = stdin.readLineSync();
  print("girilen isim: $isim");

  print("yaş girin:");
  int? yas = int.parse(stdin.readLineSync()!);
  int dogumTarihi = (2023 - yas);
  print("Doğum Tarihi: $dogumTarihi");
}
