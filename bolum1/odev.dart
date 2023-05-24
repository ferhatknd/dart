void main(List<String> args) {
  String firstName = "Ferhat";
  String lastName = "Kendi";
  num age = 43;

  // print(firstName.length + lastName.length);
  print("1- Benim adım $firstName $lastName, yaşım $age ve karakter boşluksuz: ${firstName.length + lastName.length}'dir");
  print("1- Benim adım $firstName $lastName, yaşım $age ve karakter boşluklu: ${(firstName+" "+lastName).length}'dir");

  // print içinde "birşey: ${(en * boy).toInt()} dir." Buna göre => ${(firstName.length + lastName.length)}
  // biz güzel parantezi işlem yapacağım zaman gruplamak için kullanıyorum. Bir üst gruplama için normal parantez kullanıyorum.
  // print içinde "yazi içinde rakamsal ${en.toInt()} bir değişken yazıya çevrilmiş olarak gelir"

  num kenar1 = 3;
  num kenar2 = 4;
  num kenar3 = 5;

  print("2- birinci kenar $kenar1 ikinci kenar $kenar2 üçüncü kenar $kenar3, toplamı: ${kenar1+kenar2+kenar3}'dir");

}
