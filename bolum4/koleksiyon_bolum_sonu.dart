void main(List<String> args) {
  //1- Dört il tutan liste ve ekrana yazdır.
  List<String> sehirler = [
    'istanbul',
    'bursa',
    'izmir',
    'ankara'
  ]; // List<String> kısmı için 'var' olabilir.
  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }
  // 1- soru alternatif çözüm.
  var sehirler2 = <String>[];
  sehirler2.add('istanbul');
  sehirler2.add('izmir');
  sehirler2.add('bursa');
  sehirler2.add('ankara');
  print(sehirler);

  // 2- keyi string ve değeleri dinamik map, bilgisayarın çekirdek, ram, ssd var yok tutup, ekrana yazdıran fonksiyon.
  var bilgOzellikleri = <String, dynamic>{
    'çekirdek': 16,
    'ram': 64,
    'ssd': true
  };
  print(bilgOzellikleri);
  print('Bilgisayarın Özellikleri:');
  for (var oankiEntry in bilgOzellikleri.entries) {
    print(
        "${oankiEntry.key} : ${oankiEntry.value}"); //bu kullanım bence önemli.
  }

  // 3- Her elemanının key'i string, value'su dinamik map içeren liste. Liste içinde, il, ilce_sayisi, plaka olacak.
  // Okunaklı ekrana yazdır. Örn: 1-il ankara, ilçe sayısı 15, plaka 6... gibi.
  var il1 = {'il': 'ankara', 'ilce_sayisi': 25, 'plaka': 6, 'nufus': 5};
  var il2 = {'il': 'izmir', 'ilce_sayisi': 30, 'plaka': 35, 'nufus': 4};
  var il3 = {'il': 'bursa', 'ilce_sayisi': 17, 'plaka': 16, 'nufus': 3};
  var il4 = {'il': 'istanbul', 'ilce_sayisi': 39, 'plaka': 34, 'nufus': 20};
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[]; // bu ne amk
  iller.add(il1);
  iller.add(il2);
  iller.add(il3);
  iller.add(il4);

  /*
  for (int i = 0; i < sehirler.length; i++) { // for i için değer artan kullanım.
    print(sayilar.elementAt(i)); // listenin i ıncı index teki elemanı getirdi.
  }
  */

  for (int i = 0; i < iller.length; i++) {
    var iSehir = iller[i]; // iSehir ile Sehir map içindeki keyValue / index karşılığını çağırmak için
    print("${i + 1}. şehir :${iSehir['il']}, ilce :${iSehir['ilce_sayisi']}, plaka :${iSehir['plaka']}, nufus :${iSehir['nufus']}");
  }

  // print(iller[0]['il']); illerdeki '0'. index satırını komple getirir.
  // print(iller[0]['il']); 'il' map içindeki keyValue değeri olduğundan karşısındaki il ismini getirir.
}
