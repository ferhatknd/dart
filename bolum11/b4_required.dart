void main(List<String> args) {
  final t1 = ucSayiTopla(s1: 1, s2: 2, s3: 5);
  final t2 = ucSayiTopla(s1: 1, s2: 2, s3: 5);

  print(t1 + t2);
  //boşa yazılmış bir print.
}

int ucSayiTopla({required int s1, required int s2, required int s3}) {
  // {} opsiyonel demek.
  // required eklenerek değer gönderilmesi zorunlu kılınabilir.
  return s1 + s2 + s3;
}
