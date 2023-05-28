import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "fer";
  String _sifre = "123";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "fer" && _sifre == "123") {
        return true;
      } else
        return false;
    } else
      return false;
  }
  VeritabaniIslemleri(){}
  VeritabaniIslemleri.loginWithNameandPass(String kullaniciAdi, String sifre){}

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
