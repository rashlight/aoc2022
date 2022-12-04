import 'dart:io';

main() {
	String test = stdin.readLineSync();
	int max = 0;
	int total = 0;

    while (test != null) {
        if (test.trim() == "") {
            if (total > max) max = total;
            total = 0;
        }
        else {
            total += int.parse(test);
        }
        
        test = stdin.readLineSync();
    }
    
    print("$max");
}
