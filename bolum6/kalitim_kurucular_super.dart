void main(List<String> args) {
  Asker fer = Asker("Ferhat", 43);
  fer.selamla(); // kendi özelliği
  Er hasan = Er("Hasan", 19);
  hasan.memleketDegis(
      "Florida"); // Er sınıfında olmasına karşın değiştirilebiliyor oldu. super ile...
  hasan.selamla(); // artık yeni selamı verir.
}

class Asker {
  String ad = "Örnek Ad";
  int yas = 18;
  String memleket = "Türkiye";
  Asker(this.ad, this.yas) {
    print("Asker sınıfı kurucu çalıştı");
  }

  void selamla() {
    print("Selam: $ad, yaş: $yas");
  }
}

class Er extends Asker {
  // Er askerden kalıtım aldığı için ordaki 'ad' ve 'yas' tanımlamak gerekir.
  // super ile de üst sınıfa gidilip değerler (ad ve yas) alınabiliyor.
  Er(String ad, int yas) : super(ad, yas) { // üst sınıfın constructor'ına erişilebilir.
    print("Er sınıfı kurucu çalıştı");
  }
  // memleket burda fonksiyonla çağrılıp değiştirilebilir.
  void memleketDegis(String yeniMemleket) {
    super.memleket = yeniMemleket; // üst sınıfın değişkenine veya fonksiyonuna erişilebilir.
  }

  // alt sınıf üst sınıfın metodunu @overrite edebilir.
  @override // yazmasada oluyor.
  void selamla() {
    print("Er selamı");
  }
}
