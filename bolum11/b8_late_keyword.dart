main(List<String> args) {
  final yemegim = Yemek(100); // bu rakam girilmek zorunda...
  yemegim.setTanim("kuru fasulye");
  print(yemegim.tanim);
  // eger bu print bir üst satırdaki tanımlama yapılmadan
  // print edilmeye çalışır ise program çöküyor.
  // Zaten late final ile verdiğiniz sözü yerine getirmemiş oluyorsunuz.
  print(yemegim.fiyat);
}

class Yemek {
  late final String tanim;
  // null olması olası ise late final eklenebilir. ben değer koyacağım demek.
  late final int fiyat;
  Yemek(int fiyat) {
    this.fiyat = fiyat;
    // aynı şekilde late olduğu için çalışıyor.
  }
  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}
