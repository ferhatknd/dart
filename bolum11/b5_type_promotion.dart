void main(List<String> args) {
  String? mesaj;

  if (DateTime.now().hour < 12) {
    mesaj = "günaydın!";
  } else {
    mesaj = "iyi akşamlar";
  }

  print(mesaj);
  print(mesaj.length);
  print(DateTime.now().hour);

  Object metin = "bir string";
  if (metin is String)
  print(metin.length);
}
