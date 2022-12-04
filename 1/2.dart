import 'dart:io';

main() {
	String test = stdin.readLineSync();
	List<int> elves = new List();
	int total = 0;

    while (test != null) {
        if (test.trim() == "") {
            elves.add(total);
            total = 0;
        }
        else {
            total += int.parse(test);
        }
        
        test = stdin.readLineSync();
    }
    
    elves.sort();
    
    int max = elves[elves.length - 1] + elves[elves.length - 2] + elves[elves.length - 3];
    
    print("$max");
}
