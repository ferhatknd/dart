main(List<String> args) {
  Kisi fer = Kisi("Fer", 43);
  fer.kendiniTanit();
  Calisan hasan = Calisan("Hasan", 30,
      9000); // kalıtımı üstten aldığı için değişkenleri göndermek gerekir.
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;
  
  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("Ad: $isim, $yas");
  }
}

// alt sınıftan bir nesne üretildiğinde üst sınıfın kurucusu çalışır.
class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age,
      this.maas) // this.maas ile alınmalı ki kurucu constructor içine girmeden değeri ilgili değişkene gönderebilsin.
      : super(name, age); // üst grupla aynı değişken ismi zorunlu değil.
  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaş: $maas");
  }
}
