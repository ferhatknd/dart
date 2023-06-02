void main(List<String> args) {
  List<int?> nullDegerliListe = [2, 3, null];

  int a = nullOlabilirAmaDegil!; 
  //nullable şeyler non-nullable değişkene atanmaz!
  // aynı {} içinde olduğunuz için bunu dart biliyor ve izin veriyor.
  // non-nullable değere {} dışında bir şey gelecek ise bu sefer ! ile null beklentisi iletilebilir.
  int b = nullDegerliListe.first!; // null gelme ihtimali elemanda
  // liste komple null olamayacağı için liste sonuna konmaz ! işareti.
  int c = nullDondurulebilirAmaDondurmeyecek()!.abs(); 
  // ! gelen değer yerine konur.

  print("$a, $b, $c"); // hata vermesin diye.
}

int? nullDondurulebilirAmaDondurmeyecek() {
  return 5;
}

int? nullOlabilirAmaDegil = 1;
// bu ilk {} içinde olsa hata veriyor. çünkü null olmadığını biliyor.
