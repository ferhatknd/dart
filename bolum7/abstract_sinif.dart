void main(List<String> args) {
  Sekil s1 = Kare(3); // var veya int değeri de verilebilir Sekil yerine.
  print(s1.alanHesapla());
  print(s1.cevreHesapla());

  Sekil s2 = Dortgen(3, 5);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());

  // Listelerde saklanabiliyor. Normal kalıtım yapılsaydı şekilden nesne üretilebilirdi.
  // Şekil alan hesaplamayı bilmiyor ve nasıl doldurulacağını da bilmiyor.
  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  //test fonksiyonuna hem kare hem dortgen gönderilebiliyor. .. eğer ekrana bir şey yazacak olsaydı görülecekti.
  test(s1);
  test(s2);
}

// bir fonksiyon tanımlandığında her alt sınıftakiler için tek bir fonksiyon kullanılabiliyor.
void test(Sekil sekil) {
  sekil.alanHesapla();
}

abstract class Sekil {
  // soyut kavramsal bir sınıf tanımlanırken kullanılır.
  int alanHesapla();
  int cevreHesapla();
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  int alanHesapla() {
    return kenar * kenar;
  }

  @override
  int cevreHesapla() {
    return 4 * kenar;
  }
}

class Dortgen extends Sekil {
  int k1;
  int k2;
  Dortgen(this.k1, this.k2);

  @override
  int alanHesapla() {
    return k1 * k2;
  }

  @override
  int cevreHesapla() {
    return 2 * k1 * k2;
  }
}
