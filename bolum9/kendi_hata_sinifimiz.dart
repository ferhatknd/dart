void main(List<String> args) {
  try {
    Student fer = Student(-5);
    print(fer.age);
  } on AgeException catch (e) {
    print(e); // hatanın toString metoduna ihtiyaç duyar.
  } finally {
    print("program devam...");
    // tam bu kısımda da hata verme ihtimali olan bir şey çalışırsa try ile yakalanmalı.
  }
}

class AgeException implements Exception {
  String message = '';

  AgeException({this.message = "Age exception"});

  @override
  String toString() {
    return "hatanın tostring metodu çalıştı";
  }
}

class Student {
  int age = 0;

  Student(int age) {
    if (age < 0) {
      // print("yaş negatif olamaz!"); // kendi hatamı ürettiğim için gereksiz.
      throw AgeException(message: "Throw ile belirtilen Age exception");
      // mesajımı yazmazsam AgeException kısmındaki varsayılan değer kullanılır.
      // bu yapı ile ogrenci nesnesi üretilmeden geri dönülür. Doğru kullanımdır.
    } else
      this.age = age;
  }
}
