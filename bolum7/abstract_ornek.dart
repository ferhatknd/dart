void main(List<String> args) {
  Veritabani db = OracleDB(); // güzel yazılmış kodlarda bunu hep görürsünüz.
  // Yani yarın değişmesi lazım olduğunda veritabanı bağlantısı burdaki yeni class tanımlanır ve o çağrılır.
  // O
  db.userDelete();
  db.userSave();
  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  // genelde veri dönmeli ama basit olsun diye void ile fonks. yapıldı.
  void userSave();
  void userUpdate();
  void userDelete();
  // içi doldurulmamış fonksiyon varsa bu abstract yazılmış demektir.
  // Başka yerde içi doldurulacaktır.
  // abstract sınıflardan nesne üretilemez ama... yani main içinde Veritabani db = veritabani(); olmaz.
  // soyut tanım olan bu kısma bir fonksiyon eklendiğinde hemen oracle ve firebase de bu tanımları isteyecek.
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("oracle db den kullanici silindi");
  }

  @override
  void userSave() {
    print("oracle db ye kullanici kaydedildi");
  }

  @override
  void userUpdate() {
    print("oracle db deki kullanici güncellendi");
  }
}

class FirebaseDB extends Veritabani{
    @override
  void userDelete() {
    print("Firebase db den kullanici silindi");
  }

  @override
  void userSave() {
    print("Firebase db ye kullanici kaydedildi");
  }

  @override
  void userUpdate() {
    print("Firebase db deki kullanici güncellendi");
  }
}