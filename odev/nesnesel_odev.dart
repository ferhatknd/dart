// 1- CemberDaire sınıfı, kurucusu yarıçap ve alan. Ayrıca çevre ve alan hesaplayan metotlar olacak.

// 2-  Ogrenci sınıfı, id ve not tutulacak,
// 100 elemanlı bir listede id ve not değerleri rasgele üretilecek
// ve bu öğrenciler saklanacak ve ekrana yazdırılacak.

import 'cember_daire.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(4);
  print("Alan: ${c1.alanHesapla()}");
  print("Çevre: ${c1.cevreHesapla()}");
}
