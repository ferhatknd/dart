void main(List<String> args) {
  int? a =0 ; // ? ile nullable olabilir.
  // a = null; // normalde null konamaz ama nullable olursa olur.
  print("a değişkeni: $a");
  // ama bu nullable durumu aşağıdaki duruma neden olur
  print(a + 2); // a null olabileceğinden 2 ile toplanamaz.
}
