void main(List<String> args) {
  print("Program başladı");
  try {
    int sayi = 100 ~/ int.parse("fer"); // bu bölen 0 ise başka hata olur.
    print(sayi);
  } on IntegerDivisionByZeroException { // özellikle bu hata varsa...
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) { // özellikle bu hata varsa mesajı ve kaynağı yazsın...
    print(e.message);
    print(e.source);
  }catch (e){ // sadece hatayı yazsın. (e) error
    print("Hata: ${e}");
  }finally { // hata çıkmazsa
    print("işlem bitti");
  }
  print("Program devam..."); 
}
