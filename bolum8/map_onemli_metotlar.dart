void main(List<String> args) {
  // Map lerin soyut sınıfları da vardır.
  Map<String, dynamic> map = Map();
  Map<String, dynamic> map2 = {};
  var map3 = <String, dynamic>{};
  // 3 şekilde oluşturulabilir.

  map['id'] = 5;
  // id key dir. 5 ise value dur. her ikisine entry denir.
  map['isim'] = 'Fer';
  map['renk'] = 'mavi';

  var newMap = Map.from({'deger': 'yeni', 'ikinci deger': 'ikinci yeni'});
  print(newMap);
  // virgül ile ayrıca tüm entry ler girilebilir.

  var mapFromEntries = Map.fromEntries(map.entries);
  // 3. satırdaki 'map' in bir kopyasını oluşturduk.
  print(mapFromEntries);

  var list = [0, 1, 2, 3, 4];
  //liste bir iterable'dır. O sebeple üstteki listeyi ekleyeceğiz.
  // var mapFromIterable = Map.fromIterable(list);
  // key ve value değerlerine aynıların yazarak map oluşturur.
  var mapFromIterable = Map<String, String>.fromIterable(list,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 2}");
  // key değerine her bir elemanı yazdığı value ya ise 2 katını yazdığı map.
  // bu komuttaki fromIterable tanımı önemli. Anlamak gerek.
  print(mapFromIterable);

  map.update('idx', (value) => value * 15, ifAbsent: () => 100);
  // idx yerine id yazılsa id değeri id * 15 yapılır.
  // idx yerine mesela isim yazılabilir ve fat arrow sonrası yeni değer verilebilir.
  // idx değeri yoksa absebt kısmı çalışır.
  print(map);

  map.putIfAbsent('soyisim', () => "K");
  // soyisim key i yoksa koyar. varsa koymaz.
  print(map);
}
