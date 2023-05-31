// lexical variable scope yani içerdeki dışardaki değişkene erişebilir.
// içerdeki fonksiyon çalışıp bitse dahi içerdeki fonksiyon dışardaki fonks. parametrelere erişebiliyor.
void main(List<String> args) {
  var mainDegiskeni = 1;
  void a() {
    var aDegiskeni = 2;
    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
      print(bDegiskeni);
    }
  }

  /*var d = topla(); // topla fonksiyonuna bize bir başka fonksiyon döner. tani topla()... şeklindeyken. orda int eleman olur ise parametre bekler.
  var sonuc = d(5); 
  print(sonuc);*/

  var donenFonk = topla(3); // topla çağrıldığında eleman değeri 3 olur.
  print(
      donenFonk); // deger değişkeni boş olduğu için fonksiyon dönüyor. ama 3 orda kalıyor.
  var sonuc = donenFonk(4); // sonra da donen fonksiyon ile değer gönderildiğinde kendisine gönderilen ve elemanda olan 3 değerini sakladığı için 3 ile 4 çarpılıyor.
  print(sonuc);
}

Function topla(int eleman) {
  // eleman deger degiskenine atanıyor.
  return (int deger) => eleman * deger; //içerideki fonksiyon dışardaki fonksiyona bağlanmış oldu.
}
