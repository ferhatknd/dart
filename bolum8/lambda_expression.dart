// isimlendirilmemiş fonksiyon = lambda expression
void main(List<String> args) {
  // Normal fonksiyona iş gönderirken;
  sayilariTopla(5, 8); // işlemi yapar ve ekrana yazar.

  //lambda expression ise bir fonksiyon gibi değilmiş.
  Function fonksiyon1 = (int a, int b) {
    //var veya Function ile atama yapılabilir.
    int toplam = a + b;
    print(toplam);
  }; // değişken olduğu için ; ile bitmeli.

  // olayı fonksiyon1 i başka bir fonksiyona parametre olarak geçebilmemiz.

  print(
      fonksiyon1); // değer gelmediği için kendi tanımını döndü. normal fonksiyon değersiz çalışmaz.
  fonksiyon1(3, 5); // bu haliyle işlem yapıp sonucu dönebiliyor.

  var f1 = (int s) =>
      s * 2; // fat arrow ile return ve süslü paranteze gerek kalmıyor.
  var f2 = (int s2) {
    return s2 * 2;
  }; // üstteki ile aynı //var ile bir isim atanabiliyor.

  print(f1(5)); // 5 e işlem yapar.
  var sayi = f2(3);
  print(sayi);
}

// Normal fonksiyonun ismi olur ve o isimle çağrılır.
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
