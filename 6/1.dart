import 'dart:io';

int check(String lst) {
  var checker = new List<String>();
  bool failed = false;
  for (int i = 0; i < lst.length - 4; i++) {
    checker = [];
    failed = false;
    for (int j = i; j < i + 4; j++) {   
      // stdout.write(checker);
      // stdout.write(" ");
      // print(lst[j]); 

      if (checker.contains(lst[j])) {
        failed = true;
      }
      else checker.add(lst[j]);
    }
    if (!failed) {
      return i;
    }
  }
  return -1;
}

main() {
  String inp = stdin.readLineSync();

  print(check(inp) + 4);
}