//Koleksiyonların hepsi var ile tanımlanabilir.

void main(List<String> args) {
  var listem = <String>[];
  var mySet = {
    "fer",
    "Hasan"
  }; // bir tane değer girdiğim için set olur. eğer "isim: fer" girersem map olur.
  var myMap = <String, dynamic>{"yaş": 43};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  var tumSayilar = [...tekSayilar, ...ciftSayilar];
//  print(tumSayilar);

  var map1 = {"ad": "fer"};
  var map2 = {"yaş": 43};
  var sonMap = {...map1, ...map2};

  var set1 = {"fer"};
  var set2 = {"fer"};
  var set3 = {"ayse"};
  var set4 = {"hasan"};
  var set5 = {"huseyin"};
  var sonSet = {...set1, ...set2, ...set3, ...set4, ...set5};
  print(sonSet);
}
