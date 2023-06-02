void main() {
  performTaskWithDelay<String>(Duration(seconds: 2), () {
    return "Merhaba, 2 saniye sonra döneceğim!";
  }).then((result) {
    print(result);
  }).catchError((error) {
    print("Hata: $error");
  });
  
  print("Program devam ediyor");
}

Future<T> performTaskWithDelay<T>(Duration delay, T Function() task) {
  return Future.delayed(delay, () {
    try {
      return task();
    } catch (e) {
      throw Exception("Görev çalıştırılırken bir hata oluştu: $e");
    }
  });
}
