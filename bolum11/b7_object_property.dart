import 'dart:math';

void main(List<String> args) {
  final uretilen = RastgeleMetinUretici();
  //String? sonuc = uretilen.metinNullUretici();
  // lokal değişkene atayarak null kontrolü daha güvenli yapılabilir.
  if (uretilen.metinNullUretici() == null) {
    print("null değer döndü");
  } else {
    // print(uretilen.metinNullUretici()); // veya sonuc bastırlabilir.
    // amacımız fonksiyonla gelen değeri yazdırmak.
    metinYazdir(uretilen.metinNullUretici());
  }
}

class RastgeleMetinUretici {
  // sınıfların içindeki fonksiyonlara metot denir.
  String? metinNullUretici() {
    if (Random().nextBool()) {
      return "String ifade";
    } else
      return null;
    // bool true ise ilki, bool false ise ikincisi çalışacak.
  }
}

void metinYazdir(String? ifade) {
  print(ifade);
}
