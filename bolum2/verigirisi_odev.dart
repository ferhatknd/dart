import 'dart:io';

void main(List<String> args) {
  /* print("vize not:");
  int? not1 = int.parse(stdin.readLineSync()!);
  print("Final not:");
  int? not2 = int.parse(stdin.readLineSync()!);
  
  double? finalNot = (((not1*40) + (not2*60))/100);
  print("Final: $finalNot"); */

  print("Fiyat:");
  int? fiyat = int.parse(stdin.readLineSync()!);
  double? fiyatKdv = fiyat * 1.18;
  print("KDV'li fiyat: $fiyatKdv");
}
