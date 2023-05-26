// her biri birbirinden farklı elemanları saklar.
// örneğin birden fazla defa başvuru yapan kişiye tek ödül verilecek ise set içine alınabilir. Böylece unique olur.
void main(List<String> args) {
  Set<String> isimler =
      Set(); // var diye de olabilir Set<String> kısmı? denedim oldu.
  isimler.add("fer");
  isimler.add("hasan");
  isimler.add("hüseyin");
  isimler.add("can");
  isimler.add("canan");
  isimler.add("fer");
  isimler.add("fer");
  isimler.add("canan");
  // setlerde sıra yoktur. Yani girişlerin indexleri yoktur. 'unordered' şeklindedir.

  bool sonuc = isimler.remove("fer"); // ilk 'fer'i siler.
  print(sonuc);

  for (String s1 in isimler) {
    print("isim : $s1");
  }

  Set<int> numaralar = Set.from([1, 2, 3, 4, 5, 4, 3, 2, 1, 1, 1, 1]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (int s1 in numaralar) {
    print("no : $s1");
  }
  numaralar.clear();
  numaralar.addAll(ciftSayilar);
  for (int s1 in numaralar) {
    print("addall dan sonra : $s1");
  }
}
