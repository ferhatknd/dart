import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-25);
    print("Değer ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  try {
    // burada da hata yakalanabilir. o sebeple eklendi.
    if (i < 0) {
      throw FormatException("Sayı negatif olamaz. "); // hata ile program durur.
      // hata internal olarak belirir. eğer try ile yakalanmamışsa.
    } else
      return sqrt(i);
  } on FormatException catch (e) {
    print(e.message + "metot içinde yakalandı");
  } finally {
    return 0;
  }
}
