// 1- CemberDaire sınıfı, kurucusu yarıçap ve alan. Ayrıca çevre ve alan hesaplayan metotlar olacak.

// 2-  Ogrenci sınıfı, id ve not tutulacak,
// 100 elemanlı bir listede id ve not değerleri rasgele üretilecek
// ve bu öğrenciler saklanacak ve ekrana yazdırılacak.

import 'dart:math';
// import 'cember_daire.dart'; //1. soru için import ediliyor.
import 'ogrenci.dart'; //2. soru için import ediliyor.

void main(List<String> args) {
  // 1. sorunun çözümü
  //CemberDaire c1 = CemberDaire(4);
  //print("Alan: ${c1.alanHesapla()}");
  //print("Çevre: ${c1.cevreHesapla()}");
  //1. sorunun çözümü bitti.

  // Ogrenci2 ogr1 = Ogrenci2(id: 5, not: 10); // bir tane öğrenci eklemek için
  // 2. Adım okuldaki tüm ogrencilerin tutulduğu liste üretildi. içi boş
  List<Ogrenci2> tumOgrenciler = List.filled(2, Ogrenci2()); 

  // 4. Adım tumOgrenciler listesini ekrana dökecek fonksiyon.
  ogrenciListesiniDoldur(tumOgrenciler);
  for (Ogrenci2 oOgrenci in tumOgrenciler) {
    print(oOgrenci); // fakat string olmadığı için veriler ogrenci.dart içinde 5. Adım ile okunabilir yapılacak.
  }
  // 6. Adım ortalama bulmak istedik ve bu liste yine aşağıdaki fonksiyona atıldı. ve gelen yazıldı.
  print("Not ortalaması:" + ogrenciNotOrtalamasi(tumOgrenciler).toString());
}

// 3. Adım listenin içine istenilen rasgele değerler dolduruldu.
// main dışındaki bu fonksiyona listeyi göndermek için tumOgrenciler degiskeni 
// aynen ogrenciListesiniDoldur değeri ile değişken olarak burada da tanımlandı.
void ogrenciListesiniDoldur(List<Ogrenci2> tumOgrenciler) {
  for (int i = 0; i < tumOgrenciler.length; i++) {
    tumOgrenciler[i] =
        Ogrenci2(id: Random().nextInt(1000), not: Random().nextInt(100)); // [i] index li öğrenci için değerler üretildi ve yazıldı.
  }
}

// 6. Adım için notların okunması, toplama alınması ve ortalamanın double olarak geri gönderildiği fonksiyon.
double ogrenciNotOrtalamasi(List<Ogrenci2> tumOgrenciler) {
  int toplam = 0;
  for (Ogrenci2 oOgrenci in tumOgrenciler) {
    toplam = toplam + oOgrenci.not;
  }
  return toplam / tumOgrenciler.length;
}
