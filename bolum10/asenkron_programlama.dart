void main(List<String> args) {
  print("Asafı ekmek almaya gönderdik...");
  // uzunSurenIslem(); // future string beklemesi için alt satır.
  Future<String> bekleyecekVeri = uzunSurenIslem();
  bekleyecekVeri.then((String value) => print(value)).catchError((error) {
    print(error);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti."));
  // Dönen string veri geldikten sonra 'then' yazdı. Tamamlandığında çalışır.

  print("Masa hazırlanıyor...");
  print("Kahvaltı hazır.");
}

Future<String> uzunSurenIslem() {
  // beklemeli ise void olmaz.
  print("Asaf ekmek için evden çıktı");
  // sleep(Duration(seconds: 5)); // bunun alternatifi Future.delayed()
  Future<String> bekleyecekVeri = Future.delayed(Duration(seconds: 1), () {
    // değişkene atanmalı.
    return "Asaf ekmek aldı eve geldi."; // return eklendi. hata görmek için kapatıldı.
    // throw Exception("Bakkalda ekmek yokmuş"); // hatalı örnek için...
  });
  // Future olası string değer döndürür. Ama şu anda yok. o bekleme önemli.
  return bekleyecekVeri;
}
