void main(List<String> args) {
  /* for (int i = 1; i <= 5; i++) {
    print("$i. for döngü");
  }

  int whileDongu = 0;
  while (whileDongu < 5) {
    print("${whileDongu+1}. while döngü");
    whileDongu++;
  }
  int doDongu=0;
  do{
    print("${doDongu+1}. do döngüsü");
    doDongu++;
  }
  while(doDongu<5); 

  for (int i = 1; i < 100; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print("100 den küçük 15 e tam bölünen $i'in karesi ${i * i}");
    }
  }
  int sayi = 20;
  int faktoriyel = 1;
  int carpan = 1;
  while (carpan <= sayi) {
    faktoriyel = faktoriyel * carpan;
    carpan++;
  }
  print(faktoriyel);
  */

// Permutasyon: Matematikte permütasyon, n elemanlı bir kümenin r elemanlı alt kümelerinin (kendi içinde) r kere yer değiştirme sayısıdır.
// P(n,r) n!/(n-k)!

  int nElemani = 1;
  int rElemani = 1;
  int permSayisi = 6;

  while (nElemani <= permSayisi) {
    permSayisi = rElemani * nElemani;
    nElemani++;
  }
  print(permSayisi);
}
