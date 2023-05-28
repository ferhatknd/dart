void main(List<String> args) {
  Ogrenci asaf = Ogrenci(5, "Asaf Ali K");
  Ogrenci alya = Ogrenci.idSiz("Asaf Ali K");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "Ayşe");
  print(ayse.id);
  print(ayse.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Vars. Kurucu");
  }

  Ogrenci.idSiz(this.isim) {
    print("sadece isimli kurucu");
  }

// return değer göndermek için factory ile kurucular yazılabilir.
  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
