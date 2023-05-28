import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Lütfen 5 farklı tamsayı girin:");

  for (int i = 0; i < 5; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
    print("Girilen rakam: $number");
  }

  bubbleSort(numbers);

  print("Sıralanmış rakamlar:");
  for (int number in numbers) {
    print(number);
  }
}

void bubbleSort(List<int> numbers) {
  int length = numbers.length;
  for (int i = 0; i < length - 1; i++) {
    for (int j = 0; j < length - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
}
