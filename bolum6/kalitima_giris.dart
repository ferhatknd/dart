void main(List<String> args) {
  User u1 = User();
  u1.girisYap(); // sadece User içindeki fonks. çağırabilir.
  NormalUser u2 = NormalUser();
  u2.girisYap(); // u2 -> NormalUser içinde "girisYap" fonksiyonu olmasa bile extend ile User'dan alıyor.
  u2.davetEt(); // sadece kendisine has fonksiyonları zaten çağırabilir.
  Editor u3 = Editor();
  u3.blogUret(); // Bu blog üretme kendine özel olan sınırsız blog üretme özelliğidir.
  SuperAdmin u4 = SuperAdmin(); // upcasting
  u4.girisYap(); // User'dan gelen özelliği kullanmasını sağlayan Admin'den aldığı kalıtımdır.
  u4.kullaniciEkle(); // Adminden gelen kalıtımdır.
  u4.kullaniciSil(); // SuperAdmin e özel fonksiyondur.
  User u5 =
      SuperAdmin(); // upcasting -> user list gibi bir şey yapılacağı zaman müşterek listede toplayabilinir.
  u5.blogUret();
  u5.girisYap();

  List<User> tumUserlar = [];
  tumUserlar.add(u1); // zaten User ile üretildi.
  tumUserlar.add(
      u2); // NormalUser ile üretilmiş olmaına karşın  üst özelliklerinni User'dan aldığı için...
  tumUserlar.add(u5); // üretimin temelinde user olduğu için...

  birFonks(u1);
  birFonks(u5);
}

void birFonks(User kullanici) {
  kullanici.girisYap(); // User içindeki tanımları kullanabilirim. -> polimorfizm
}

// Ana Class oldu. Çünkü herkes email ve password (pwd) ile giriş yapma fonksiyonlarına sahip olmalı.
class User {
  String email = "";
  String pwd = "";
  void girisYap() {
    print("Kullanıcı giriş yaptı!");
  }

  void blogUret() {
    print("1 Blog üretebilir.");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Kullanici davet edebilir");
  }
}

class Editor extends User {
  @override // üstüne fonksiyon yazılacağı zaman kullanılacak komttur.
  void blogUret() {
    print("Sınırsız Blog üretebilir");
  }
}

class Admin extends User {
  void kullaniciEkle() {
    print("Kullanici ekleyebilir.");
  }
}

// Admin User özelliklerini alır. Super admin ise user özelliklerini Admin üzerinden alır.
class SuperAdmin extends Admin {
  void kullaniciSil() {
    print("Kullanıcı silebilir.");
  }
}
