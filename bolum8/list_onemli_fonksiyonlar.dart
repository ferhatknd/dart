void main(List<String> args) {
  Person fer = Person(256, "Ferhat K");
  Student zey = Student(56, "Zeynep K", 9);
  Person aly = Student(25, "Alya K", 8);
  var asf = Person(56, "Asaf K");
  var sab = Student(2, "Saban K", 5);

  // List Costructors
  List<Person> allStudents = [fer, zey, aly, asf, sab, fer, fer];
  // köşeli parantez [] bir constructor yani yeni bir liste oluşturur.
  // list<Person> kısmındaki <person> ile listenin özellikleri alınmış.

  var list1 = List<Student>.filled(5, Student(0, "", 0));
  // 5 -> beş elemanlı demek, ikinci kısım neyle doldurulacak ise o, hepsini int ise 0 ile doldurabiliriz.
  // yada örnekteki gibi bir class çağırabiliriz ve içine yazılacak olan Student ile tanımlı olan 3 parametre.
  print("list1 (just filled 0) $list1"); // herkes 0 lanmış :)

  var listFrom = List<Person>.from(allStudents);
  // listeler iterable olduğu için bir liste veya set gönderebiliriz.
  print("listFrom $listFrom");

  var listOf = List<Person>.of(allStudents.whereType<Student>());
  // tüm person ları gezecek ve onlardan student tipi olanları oluşturacak.
  print("listOf $listOf");

  // var listGenerate = List<int>.generate(5, (index) => index + 2);
  // index üretti inde değeri de 5 elamanlı olsa da 0,1 atladı 2,3,4,5,6 oldu.
  var listGenerate = List<Student>.generate(
      5, (index) => Student(index + 1, "$index", index * 3));
  // listeyi üretirken index değerini kullanabildiğimiz constructor.
  print("listGenerate $listGenerate");

  var listUnmodifiable = List.unmodifiable([0, 1, 2]);
  // eleman eklenip çıkarılamaz bir listedir.
  // listUnmodifiable.add(3); // hata veriyor. ekleyemiyor
  print("listUnmodifiable $listUnmodifiable");

  // List Methods
  allStudents.add(zey);
  allStudents.addAll([aly, asf]);
  print("all Students (zey ve aly, ask eklendi): $allStudents");
  var boolSonuc = allStudents.any((Person element) => element.id < 1);
  // any bir sorgu yapıyor. kurala uyana göre boolean değer dönüyor.
  print("Aradığımız önerme var mı: $boolSonuc");

  Map<int, Person> newMap = allStudents.asMap();
  print("newMap: $newMap"); // tüm liste gelir ama index ler sonda oldu.
  print("newMap: ${newMap[0]!.name}"); // nullable olmasına dikkat

  print("fer Var mı yok mu?: ${allStudents.contains(fer)}");
  // fer ile adreslenmiş eleman var mı diye bakar. true döner
  // fer yerine 'Person(3,"Ferhat K")' koyulsa false verir. çünkü adres bakar

  bool everySonuc = allStudents.every((element) => element.name.length < 9);
  print("Listede 'name'i 9 harften küçük herhangi biri var mı?: $everySonuc");

  var firstWhereSonuc = allStudents.firstWhere((element) => element.id == 56);
  // zeynep ve asaf ın id leri aynı olmasına karşın ilkini getirir.
  print(firstWhereSonuc);

  var mapList = allStudents.map((Person e) => e.id).toList();
  // varolan yapıdan istedğimiz sütunu alıp bir liste haline getirir.
  // toList yerine toSet koyarak tekrar eden elemanların olmadığı bir liste de üretilebilir.
  print(
      mapList); // burada liste olduğu için mapList[0] istenen index getirlebilir.

  allStudents.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else
      return 0;
  });
  // allStudents.sort((a, b) => a.id.compareTo(b.id)); 
  // üstteki kod içindeki compareTo ile de hızlıca sort edilebiliyor.
  print("Sort edilmiş liste: $allStudents");
}

class Person {
  int id = 0;
  String name = "";
  Person(this.id, this.name);
  @override
  String toString() {
    return "\n id:$id ve isim:$name";
  }
}

class Student extends Person {
  int lessonCount = 0;
  Student(id, name, lessonCount) : super(id, name);
  @override
  String toString() {
    return "\n id:$id, isim:$name ve ders sayısı:$lessonCount";
  }
}
