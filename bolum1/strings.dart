void main(List<String> args) {
  String isim = "Ferhat";
  String soyIsim = "Kendi";
  var kurs = 'Dart\ın Kullanımı';
  String kursTanimi = "Dart'ı ve Flutter'ı öğreneceğiz";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim"); // boşluk kullanmak için
  print("soyadım olan $soyIsim'de bulunan karakter sayısı:" +
      soyIsim.length
          .toString()); //text içindeki değişken dolar ile yazılabilir.
  print(
      "Soyisimdeki karakter sayısı ${soyIsim.length}"); //text içindeki değişken işlem alacak ise güzel parantez içine alınabilir.
  print("öğrenceğimiz kurs: $kurs ve tanımı: $kursTanimi");

  double en = 10;
  double boy = 12;
  print(
      "eni ${en.toInt()} olan ve boyu ${boy.toInt()} olan zımbırtının alanı: ${(en * boy).toInt()} dir.");
}
