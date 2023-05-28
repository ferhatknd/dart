/*
Flutter ile algoritma geliştirmeyi deneyebileceğiniz birkaç soru:

1. Soru: Bir dizideki en büyük sayıyı bulma
Açıklama: Bir liste verildiğinde, bu listedeki en büyük sayıyı bulan bir Flutter fonksiyonu yazın.

2. Soru: Fibonacci dizisi
Açıklama: Kullanıcının girdiği bir sayıya kadar Fibonacci dizisini oluşturan bir Flutter fonksiyonu yazın.

3. Soru: İki diziyi birleştirme
Açıklama: İki ayrı sıralı dizi verildiğinde, bu dizileri birleştirerek tek bir sıralı dizi oluşturan bir Flutter fonksiyonu yazın.

4. Soru: Asal sayılar
Açıklama: Belirli bir sayıya kadar olan asal sayıları bulan bir Flutter fonksiyonu yazın.

5. Soru: Dizi ters çevirme
Açıklama: Bir diziyi tersine çeviren bir Flutter fonksiyonu yazın.

6. Soru: Palindromik sayılar
Açıklama: Bir sayının palindromik (tersinden okunduğunda da aynı olan) olup olmadığını kontrol eden bir Flutter fonksiyonu yazın.

7. Soru: Bubble sort algoritması
Açıklama: Verilen bir diziyi bubble sort algoritması kullanarak sıralayan bir Flutter fonksiyonu yazın.

8. Soru: Öklidyen algoritması
Açıklama: İki sayının en büyük ortak bölenini bulan bir Flutter fonksiyonu yazın. Öklidyen algoritmasını kullanabilirsiniz.

9. Soru: Üst alma
Açıklama: Bir sayının üssünü hesaplayan bir Flutter fonksiyonu yazın.

10. Soru: Stringi tersten yazdırma
Açıklama: Verilen bir stringi tersten yazdıran bir Flutter fonksiyonu yazın.

*/

//7. Soru: Bubble sort algoritması
// Açıklama: Verilen bir diziyi bubble sort algoritması kullanarak sıralayan bir Flutter fonksiyonu yazın.
void main(List<String> args) {
  final List<int> numbers = [10, 2, 3, 40, 5, 6, 7];
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
  print(numbers);
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
