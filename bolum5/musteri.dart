class Musteri {
  int? _musteriNo;

  /*Musteri(int musteriNo) {
    this.musteriNo = musteriNo;
  }*/

  // Musteri(this._musteriNo);
  Musteri(int MusteriNo) {
    _musteriNoKontrol(MusteriNo);
  }
  
  // setterlara = deyip değer atanabilir o yüzden set eklendi.
  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  // bu da getter kalın ok ile yazılabilir süslü parantez terine. return yazmak gerekmez.
  String get musteriNoSoyle => "Müşteri no:$_musteriNo"; 
  }

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriYazdir() {
    print("$_musteriNo nolu müşteri oluştu");
  }
}
