void main(List<String> args) {
  var str = "fer";
  str = "Ken";
// bu iki atama işleminde fer yerine Ken yazılmış gibi gözüksede aslında olan str değişkeni ile
// ilk adreslenen alandaki fer ile str ilişki kesiliyor ve ken diye başka bir stringin olduğu alan adresleniyor.

  final String str2 = "Fer";
  // str2 = "Ken"; // buna izin vermez.

  const String str3 = "Fer";
  // str3 = "Ken"; // buna izin vermez.

  // final runtime zamanında çalışır. const ise çalışmadan veri atanır. mutlak değişmezler yani.
  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
  liste.add(3); // atanabilir.
  // const listede ise eşit çıkar sorgu çünkü yeni değer atamazsınız. listeye ekleme yapamazsınız.
  const list3 = [1,2,3]; // cannonicalized deniyor.
  // değerler internetten gelecek ise const kullanılamaz mesela.

  if (liste == liste2) {
    print("eşit");
  } else {
    print(
        "eşit deel"); // listenin tuttuğu bellek adresi faklı olduğu için eşit değildir.
  }
}
