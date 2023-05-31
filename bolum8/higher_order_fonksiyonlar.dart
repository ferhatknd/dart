// bir fonksiyonu parametre alan ve veya geriye fonksiyon döndüren fonksiyondur.
void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  liste.forEach((element) {
    print(
        "element $element"); // forEach bir fonksiyon ama içinde başka bir fonksiyon dönüyor.
  });

  liste
      .forEach(callback); // aynı işlemi yapan callback adında fonksiyon yazdık.
  // ama elementi bize forEach gönderiyor.

  kendiForEachYapim(liste, (int deger, int index) {
    print("Değer: $deger ve index $index"); // fonksyionu geliştirdik ve index i de ekledik.
  }); // işlem burda bitiyor. ; gerekli parantez sonrası.
}

void callback(int element) {
  print("Eleman $element");
}

// kendi aynı forEach yapımız
void kendiForEachYapim(List<int> liste, Function callback) {
  // parametre olarak gelen callback "(int deger)... ); kısmı"
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i); // buraya index i de ekleyelim.
  }
}
