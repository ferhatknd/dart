import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(152);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 953; // setter lara '=' ile değer atanabilir.
  print(m1.musteriNoSoyle);
  
  Musteri m2 = Musteri(-123);

  VeritabaniIslemleri db = VeritabaniIslemleri();

  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPass("fer", "123");

  bool sonuc = db.baglan();
  if (sonuc) {
    print("bağlandı");
  } else {
    print("olumsuz");
  }
}
