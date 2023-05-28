// listede index vardı. set de ise tekrar etmeyen değer içeriyor.
// map ise değerler keyvalue ilişkisi altında tutulur. kitabın index i gibi.
void main(List<String> args) {
  Map<String, int> alanKodlari = {
    "ankara": 312,
    "bursa": 224,
    "istanbul": 212,
    "izmir": 232,
  };
  print(alanKodlari["bursa"]);

  Map<String, dynamic> kimlik = {
    "soyad": "kondakci",
    "yaş": 43,
    "bekar": false,
  };
  print(kimlik["yaş"]);

// Map oluşturma "çok önemli" json okumak vs için.
  Map<String, dynamic> mapOlustur1 = Map();
  // Map<String, dynamic> mapOlustur2 = {};
  mapOlustur1["yaş"] = 44; // map e yaş değeri 44 girdi.
  print(mapOlustur1["yaş"]); // 44 ü yaş keyValue su ile getirdi.

  for (String oankiAnahtar in kimlik.keys) {
    //keylerin hepsini getirir. bir değişken muhakkak tip tanımlanmalı! String o sebeple
    print(oankiAnahtar);
    print(kimlik[oankiAnahtar]);
  }
  for (dynamic deger in kimlik.values) {
    print(deger);
  }

  for (var element in kimlik.entries) {
    print("key : ${element.key} -> değeri : ${element.value}");
  }
  if (kimlik.containsKey("yaş")) {
    print("bulunan yaş ${kimlik["yaş"]}");
  }
}
