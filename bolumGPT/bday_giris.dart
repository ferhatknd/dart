import 'dart:io';

void main(List<String> args) {
  stdout.write("Doğum Tarihi gir: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int numberInt = int.parse(input);
    int yas = 2023 - numberInt;
    print("Yaşınız: $yas");
  } else {
    print("Geçersiz giriş.");
  }
}
