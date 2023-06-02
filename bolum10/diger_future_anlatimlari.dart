void main(List<String> args) async {
  print("Program başladı");
  Future.delayed(Duration(seconds: 0), () {
    // Future bir kurucu metot (constructor)
    print("0 saniyelik işlem");
  });
  print("Program bitti");
  // önce senkronlar sonra asenkronlar çalışır.

  Future<int> f1 = Future(() {
    int x = 0;
    for (int i = 0; i < 100000000; i++) {
      // zaman alan bir işlem 1-2 sn.
      x = x + i;
    }
    //return x; //düzgün çalıştığında
    throw Exception("Toplam hesaplanamadı"); // hata almak istersek.
  });
  // future lar print diyerek yazdırılamaz.
  f1
      .then((int f) => print(f)) // bu sadece mutlu sonlarda çalışır.
      .catchError((e) => print(e));
  // bu örneği aynı değişkenle async await ile yapılması.
  try {
    int forSonuc = await f1;
    print("async/await $forSonuc");
    // eğer hata yakalanacak ise try gerekli. yoksa üstteki iki satır.
  } catch (e) {
    print(e);
  }

  var f2 = Future.value('f2 deki yazı'); // değer döndüren future
  var f3 = Future.error('hata ile biten future'); // hata döndüren future
  // Future.value vs MOCK data, gerçek verilerin simulasyonunu için kullanılır.
  f2.then((f) => print(f)); // f değeri, Instance of 'Future<String>' -> String
  f3.catchError((e) => print(e)); // e zaten error ama String yapılıyor.
}
