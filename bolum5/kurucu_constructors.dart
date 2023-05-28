void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
/*  honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true; */
  honda.bilgileriSoyle();
  honda.modelYili = 2022; // 2020 girilen önceki bilgi güncellenebiliyor.
  honda.bilgileriSoyle();

  var mazda = Araba(2019, "Mazda", false);
  mazda.bilgileriSoyle();

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  // var citroen = Araba.markasizKurucuMetot(false, 2015);
  Araba suzuki = Araba.modeliOlmayanMetot(true, "Suzuki");

  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("kurucu çalıştı"); // bu çalışan kurucu metot işlevsel olarak mesela çalıştığında bir şeyleri hazır tutmak için kullanılır.
  }

  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili); // isimlendirilmiş kurucu metot.
  Araba.modeliOlmayanMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  /* Araba(int yil, String m, bool o) {
    print("bilgiler alındı");
  
    this.modelYili = modelYili; //parametre ile gelen mi yoksa model içindeki değişken mi ayırmak için 'this'
    this.marka = marka;
    this.otomatikMi = otomatikMi; 

    /*modelYili = yil;
    marka = m;
    otomatikMi = o;*/
  }*/

  void bilgileriSoyle() {
    print("${modelYili} model, ${marka} araba otomatik mi? ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null) // model yılı null değilse alt satır.
      print(
          "Yaş ${2023 - modelYili!}"); //! ile null olabilecek şeylere olmayacak demek.
    else // model yılı null ise alt satır.
      print("model yılı olmadığından hesaplanamadı");
  }
}
