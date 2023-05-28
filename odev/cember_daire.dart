// nesnesel_odev.dart dosyasından CemberDaire() class'ı çağrıldığında aşağısı çalışır.
class CemberDaire {
  int _yariCap = 1; // null gelmesin diye.
  double _pi = 3.14; // sabit zaten.

  CemberDaire(int gelenCap) { // 1. Adım program burdan başlar
    _yariCapKontrol = gelenCap; // 2. Adım gelen değer _yariCapKontrol değişkenine atandı
  }

  void set _yariCapKontrol(int capKontrol) { // 3. Adım gelen değer capKontrol değerine atandı
    if (capKontrol > 0) {
      _yariCap = capKontrol; // 4. Adım eğer 0'dan büyükse _yariCap a atanmaya hak kazandı.
    } else {
      _yariCap = 1; // 4. Adım eğer 0'dan küçükse ihmal edildi ve 1 değeri ile yola devam.
    }
  }

  double cevreHesapla() {
    return 2 * _pi * _yariCap; // 5. Adım cevreHesapla fonksiyonu çalıştı ve sonuç dönüldü.
  }

  double alanHesapla() {
    return _pi * _yariCap * _yariCap; // 5. Adım alanHesapla fonksiyonu çalıştı ve sonuç dönüldü.
  }
}
