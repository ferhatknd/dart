void main(List<String> args) {

  Ogrenci fer = Ogrenci(); // burdaki fer ifadesi nesnedir. instance
  fer.ogrNo = 256; // burdaki ogrno ise instance variable.
  fer.ogrAd = "Ferhat K";
  fer.aftifMi = false;
  Ogrenci hat = Ogrenci();
  hat.ogrAd = "Hattat Oglu";
  hat.ogrNo = 255;
  hat.aftifMi = true;
  // Ogrenci ayse = Ogrenci(); // Ogrenci ayse  =... yerine 
  // var kemal = Ogrenci(); // şeklinde de nesne tanımlanabilir. 
}


// sınıflar main dışında.
class Ogrenci {
  // bu alttaki değişkenlere "instance variable" deniyor.
  int ogrNo = 1;
  String ogrAd = '';
  bool aftifMi = true;

  // sınıfın içinde fonksiyon tanımı (metot da denir)
  void dersCalis() {
    print("Öğrenci ders çalışıyor!");
  }
}
