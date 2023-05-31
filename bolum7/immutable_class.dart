// immutable değişmez demek.
void main(List<String> args) {
  const Student fer = Student(
      5, "Fer"); // const dersek aynı bellek adresine koyar böylece if eşit der.
  final Student fer2 = const Student(
      5, "Fer"); // bunun const olması için aşağıdaki de const olmalı...
  //var fer3 = const Student(5, "Fer");
  //fer3 = Student(5, "Fer"); // bu şekilde üretilir ise eşit olmaz. const olmalı Student öncesinde.

  if (fer == fer2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;
  const Student(this.id,
      this.isim); // const ile bellekte aynı değerler aynı yerde tutulur.
}
