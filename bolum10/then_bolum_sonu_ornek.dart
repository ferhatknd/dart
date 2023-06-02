void main(List<String> args) {
  idyeGoreUserGetir(5).then((value) {
    print(value);
    usernameGoreKurslariGetir(value['username']).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi[0];
      kursunYorumunuGetir(ilkKurs).then((String yorum) {
        print("$ilkKurs yorumları getiriliyor");
        print(yorum);
      });
    });
  });
}

kursunYorumunuGetir(String kursAdi) {
  return Future.delayed(Duration(seconds: 1), () {
    return "5* kurs";
  });
}

Future<List<String>> usernameGoreKurslariGetir(String username) {
  print("$username kullanıcı kursları getiriliyor...");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['Ders 1', 'Ders 2', 'Ders 3', 'Ders 4'];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id nolu kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'fer', 'id': id}; //burda bir map yapısı var.
    // Key        value
    // username   fer
    // id         2
  });
}
