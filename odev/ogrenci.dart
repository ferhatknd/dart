// 1. Adım olarak başka bir dosyada class olarak Ogrenci oluşturuldu. 
// Hangi verileri alacağı tanımlandı. 6. satıra kadar.
class Ogrenci2{
  int id;
  int not;
  Ogrenci2({this.id = 1, this.not = 1}); 
// 1. Adımda listede gerekli iki değişken (id ve not) default değerlele burda üretildi.

// 5. Adım listenin tüm elemanları string bir liste metni haline getirildi.
  @override
  String toString() {
    return "id: $id notu: $not";
  }
}