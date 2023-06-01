void main(List<String> args) {
  print("Program başladı");
  try {
    int sayi = 100 ~/ int.parse("fer"); // bu bölen 0 ise başka hata olur.
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print("Hata: ${e.message} \ ${e.source}");
  } finally {
    print("işlem bitti");
  }
  print("Program bitti");
}
