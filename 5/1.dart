import 'dart:io';

class Stack {
  List<String> data = [];

  Stack(List<String> input) {
    data = input;
  }

  last() {
    return data[data.length - 1];
  }

  push(String input) {
    data.add(input);
  }

  String pop() {
    if (data.length == 0) {
      throw "Stack Underflow";
    } else {
      String res = data[data.length - 1];
      data.removeAt(data.length - 1);
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

  for (int i = 0; i < data["time"]; i++) {
    String p = def[data["from"]].pop();
    def[data["to"]].push(p);
  }

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

  // First x lines are input
  for (int i = 0; i < 10; i++) {
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
