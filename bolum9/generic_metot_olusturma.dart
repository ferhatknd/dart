void main(List<String> args) {
  double avarage = findAvarege(1, 3);
  print("Ortalama: $avarage");

  double newAvarage = findAvarageNum<double>(8.1, 6.77);
  print(newAvarage);
}

double findAvarege(s1, s2) {
  // generic için şu şekilde olur: findAvarage<T>(T s1, T s2) olmalı.
  // ama sadece numaralar ile çalışıyor isek findAvarage<T extends num>(T s1, T s2) olur.
  return (s1 + s2) / 2;
}

double findAvarageNum<T extends num>(T s1, T s2) {
  // num ile int ve double gönderilebiliyor.
  return (s1 + s2) / 2;
}
