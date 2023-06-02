void main(List<String> args) {
  print("Asafı ekmek almaya gönderdik...");
  print("Asaf ekmek almak için evden çıktı...");
  uzunSurenIslem()
  .then((value) => print(value))
  .catchError((error)=>print(error))
  .whenComplete(() => print("Ekmek alma operasyonu bitti"));
  // tüm durumlar yazılmış oldu. ve beklemez aşağısı çalışır.

  print("Masa hazırlanıyor...");
  print("Kahvaltı hazır.");
}

Future<String> uzunSurenIslem() {
// uzun süren işlem olduğu için geriye muhakkak future string döndürecek.  
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Asaf ekmek aldı eve geldi.";
    // direk dönecek string metni return e koyarım.
  });
}
