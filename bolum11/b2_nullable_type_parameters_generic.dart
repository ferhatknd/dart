void main(List<String> args) {
  List<String> sL = ['Fer', 'Zey', 'Asaf'];
  List<String>? nullableStringList; // komple nullable liste.
  List<String?> nullOlanListe = ['Fer', null, 'Asaf']; // elemanlardan biri null

  print("string list: $sL");
  print("null String liste: $nullableStringList");
  print("null içeren liste $nullOlanListe");
}
