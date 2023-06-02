void main(List<String> args) {
  List list = [];
  list.add("fer");
  list.add(2);
  list.add(true);
  // dinamik bir list olduğu için her türlü veri eklendi.
  // bu zamanla sınıflama zorluğu yaratabilir.
  // generik tipler bu sebeple önemli. List<String> type-safe deniyor.

  // List<E> ==> Element anlamındadır.
  // Map<K, V> ==> Key ve Value anlamında.
  // R ==> Metotların return tipleri demek.
  // Student<T extends Person> insan sınıfının bir alt sınıfı olduğu anlamına gelir.
  yazdir(list);
}

yazdir(List list) {
  print(list[0]);
}
