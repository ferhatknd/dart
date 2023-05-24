void main(List<String> args) {
  print(ciftSayiTopla(5));
  print(daireAlanHesapla(8, 3));
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


