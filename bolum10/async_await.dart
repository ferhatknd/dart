void main(List<String> args) {
  print("internetten kişi verisi getirilecek");
  kisiyleIlgiliIslemler();
  print("Başka işlemler yapılıyor");
  print("işlem bitti");
}

void kisiyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Çekilen kişi: Ferhat K geldi...";
  });
}
