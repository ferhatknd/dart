void main(List<String> args) {
  //print(ciftSayiTopla(5));
  //print(daireAlanHesapla(8, 3));
  //ucgeninTuru(k1: 3, k2: 2, k3: 1);
  print("üçgen ${ucgeninTuruString(k1: 3, k2: 2, k3: 1)}kenardır");
}

int ciftSayiTopla(int sayi) {
  int toplam = 0;
  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam = i + toplam;
    }
  }
  return toplam;
}

double daireAlanHesapla(double yariCap, [double piSayisi = 3.14]) {
  return piSayisi * yariCap * yariCap;
}

void ucgeninTuru({int k1 = 0, int k2 = 0, int k3 = 0}) {
  if (k1 == k2 && k1 == k3) {
    print("$k1, $k2, $k3 üçgeni eşkenardır.");
  } else if (k1 == k2 || k2 == k3 && k2 != k1) {
    print("$k1, $k2, $k3 üçgeni ikizkenardır.");
  } else {
    print("$k1, $k2, $k3 üçgeni çeşitkenardır.");
  }
  // program geri değer dönmez bu if lerin çıktıları ile sonlanır.
  // geri değer döndürmek için örnek biraz karmaşık. mesela 'eş', 'ikiz' ve 'çeşit' kelimelerini string dönebiliriz eğer print ana fonksiyonda olacak ise,
}

String ucgeninTuruString({int k1 = 0, int k2 = 0, int k3 = 0}) {
  String ucgenKey = "değersiz";
  if (k1 == k2 && k1 == k3) {
    ucgenKey = "eş";
  } else if (k1 == k2 || k2 == k3 && k2 != k1) {
    ucgenKey = "ikiz";
  } else {
    ucgenKey = "çeşit";
  }
  return ucgenKey;
  // geri değer döndürmek için örnek biraz karmaşık. mesela 'eş', 'ikiz' ve 'çeşit' kelimelerini string dönebiliriz eğer print ana fonksiyonda olacak ise,
}
