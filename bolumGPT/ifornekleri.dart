import 'dart:io';

void main() {
  double? midtermGrade;
  double? finalGrade;
  bool validInput = false;

  do {
    stdout.write('Vize notunu girin (0-100 aralığında): ');
    String? input = stdin.readLineSync();

    if (input == null) {
      print('Geçersiz giriş yaptınız. Tekrar deneyin.');
      continue;
    }

    try {
      midtermGrade = double.parse(input);
      if (midtermGrade < 0 || midtermGrade > 100) {
        print('Geçersiz vize notu girdiniz!');
        continue;
      }
      validInput = true;
    } catch (e) {
      print('Geçersiz giriş yaptınız. Tekrar deneyin.');
    }
  } while (!validInput);

  validInput = false;

  do {
    stdout.write('Final notunu girin (0-100 aralığında): ');
    String? input = stdin.readLineSync();

    if (input == null) {
      print('Geçersiz giriş yaptınız. Tekrar deneyin.');
      continue;
    }

    try {
      finalGrade = double.parse(input);
      if (finalGrade < 0 || finalGrade > 100) {
        print('Geçersiz final notu girdiniz!');
        continue;
      }
      validInput = true;
    } catch (e) {
      print('Geçersiz giriş yaptınız. Tekrar deneyin.');
    }
  } while (!validInput);

  double grade = (midtermGrade! * 0.4) + (finalGrade! * 0.6);
  print("Ortalama: $grade");

  if (grade >= 90) {
    print('Notunuz AA');
  } else if (grade >= 80) {
    print('Notunuz BA');
  } else if (grade >= 70) {
    print('Notunuz BB');
  } else if (grade >= 60) {
    print('Notunuz CB');
  } else if (grade >= 50) {
    print('Notunuz CC');
  } else {
    print('Notunuz FF');
  }
}
