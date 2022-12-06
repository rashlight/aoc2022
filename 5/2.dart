import 'dart:io';

class Stack {
  List<String> data = [];

  Stack(List<String> input) {
    data = input;
  }

  last() {
    return data[data.length - 1];
  }

  push(List<String> input) {
    data.addAll(input);
  }

  List<String> pop(int len) {
    if (data.length - len < 0) {
      throw "Stack Underflow";
    } else {
      List<String> res = data.sublist(data.length - len);
      data.removeRange(data.length - len, data.length);
      return res;
    }
  }
}

Map<String, num> extract(String op) {
  var all = op.split(" ");
  return {
    "time": int.parse(all[1]),
    "from": int.parse(all[3]) - 1,
    "to": int.parse(all[5]) - 1
  };
}

List<Stack> exec(List<Stack> def, String op) {
  var data = extract(op);

  List<String> p = def[data["from"]].pop(data["time"]);
  def[data["to"]].push(p);

  return def;
}

main() {
  // TODO: Algo to read table from input
  var stk = [
    new Stack(["S", "L", "W"]),
    new Stack(["J", "T", "N", "Q"]),
    new Stack(["S", "C", "H", "F", "J"]),
    new Stack(["T", "R", "M", "W", "N", "G", "B"]),
    new Stack(["T", "R", "L", "S", "D", "H", "Q", "B"]),
    new Stack(["M", "J", "B", "V", "F", "H", "R", "L"]),
    new Stack(["D", "W", "R", "N", "J", "M"]),
    new Stack(["B", "Z", "T", "F", "H", "N", "D", "J"]),
    new Stack(["H", "L", "Q", "N", "B", "F", "T"])
  ];

  // var stk = [
  //   new Stack(["Z", "N"]),
  //   new Stack(["M", "C", "D"]),
  //   new Stack(["P"]),
  // ];

  // First x lines are input
  for (int i = 0; i < 10 /*5*/; i++) {
    stdin.readLineSync();
  }

  String inst = stdin.readLineSync();
  while (inst != null) {
    stk = exec(stk, inst);
    inst = stdin.readLineSync();
  }

  for (Stack item in stk) {
    print(item.last());
  }
}
