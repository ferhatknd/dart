void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("fer");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());
  // true önce çıktı. sonra fer sonra da 5 çıkarıldığı ekrana yazıldı.

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  // inntMyStack.push("fer"); gönderilemez.

  StrMyStack strMyStack = StrMyStack();
  strMyStack.push("fer");

  GenericStack<String> genericStack = GenericStack();
  // Burdaki <String> yazıldığı anda aşağıdaki 5 olan elemanı kabul etmez.
  // Çünkü her <T> ile belirtilen alana bu <String> gelir. Önemli!!!
  // Eğer <> ile bir tip belirtilmez ise dynamic olur. herşeyi alır.
  genericStack.push("fer");
  // genericStack.push(5);
  print("Pop ile çıkar :" +genericStack.pop());
}

class GenericStack<T> {
  // ne gelceğini bilgimiyorsam bu şekilde yazılır.
  List<T> _list = <T>[];
  void push(T newElement) {
    _list.add(newElement);
  }

  T pop() {
    return _list.removeLast();
  }
}

class MyStack {
  List _list = [];

  push(newElement) {
    // gelen elemanı ekle demek.
    _list.add(newElement);
  }

  pop() {
    return _list.removeLast(); // son elemanı çıkar.
  }
}

class IntMyStack {
  List<int> _list = <int>[];

  push(int newElement) {
    // gelen elemanı ekle demek.
    _list.add(newElement);
  }

  int pop() {
    return _list.removeLast(); // son elemanı çıkar.
  }
}

class StrMyStack {
  List<String> _list = <String>[];

  push(String newElement) {
    // gelen elemanı ekle demek.
    _list.add(newElement);
  }

  String pop() {
    return _list.removeLast(); // son elemanı çıkar.
  }
}
