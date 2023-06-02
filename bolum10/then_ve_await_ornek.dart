void main(List<String> args) async {
/*   idUser(5).then((value) {
    // $value ile {'username': 'fer', 'id': id}; bilgileri getirildi.
    // burda 5 iletildiği gibi geri iletiliyor id değişkenine atanarak.
    userKurs(value['username']).then((List kurslarListesi) {
      // $kurslarListesi ile kurs listesi getirildi.
      String ilkKurs = kurslarListesi[0];
      kursYorum(ilkKurs).then((String yorum) {
        // $ilkKurs ile yorumları getirildi
        print(yorum);
      });
    });
  }); */

  //async ve await ile çözüm: önce main fonksiyonuna async eklendi.
  Map<String, dynamic> gelenUser = await idUser(6);
  List<String> kurslarListesi = await userKurs(gelenUser['username']);
  String yorum = await kursYorum(kurslarListesi[0]);
  print(yorum);
}

kursYorum(String kursAdi) {
  return Future.delayed(Duration(seconds: 1), () {
    return "5* kurs";
  });
}

Future<List<String>> userKurs(String username) {
  print("$username kullanıcı kursları getiriliyor...");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['Ders 1', 'Ders 2', 'Ders 3', 'Ders 4'];
  });
}

Future<Map<String, dynamic>> idUser(int id) {
  print("$id nolu kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'fer', 'id': id}; //burda bir map yapısı var.
    // Key        value
    // username   fer
    // id         2
  });
}
