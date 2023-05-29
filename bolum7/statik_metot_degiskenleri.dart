void main(List<String> args) {
  var m1 = Matematik(36, 12);
  m1.topla();
  m1.cikar();
  var m2 = Matematik(6, 7);
  m2.topla();
  m2.cikar();

  // class variable erişmek için:
  print(Matematik.PI);
  // class function erişmek için:
  Matematik.sinifAdiSoyle();

  print("Toplam işlem ${Matematik.islemSayisi}");
}

class Matematik {
  // instance variable, prototipten üretilen, misal
  int s1 = 0;
  int s2 = 0;
  // int islemSayisi = 0; // bu şekilde nesneye bağlı işlemleri sayar.

  // class variable, sınıf değişkeni, nesneye bağlı değil.
  static double PI = 3.14;
  static int islemSayisi = 0; // böylece tüm işlemleri sayabilecek.
  // class function, yani statik fonksiyon oluyor.
  static void sinifAdiSoyle() {
    // topla(); // instance variable statik alan içinden çağrılamaz.
    print("Sınıf: Matematik");
  }

  Matematik(this.s1, this.s2);
  void topla() {
    print("Toplam: ${s1 + s2}");
    islemSayisi++;
    sinifAdiSoyle(); // statik alanda kullanılabilir.
  }

  void cikar() {
    print("Toplam: ${s1 - s2}");
    islemSayisi++;
  }
}
