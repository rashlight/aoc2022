import 'dart:io';

bool isUppercase(String a) {
    if (65 <= a.codeUnitAt(0) && a.codeUnitAt(0) <= 90) {
        return true;
    }
    else return false;
}

int getPrioFromString(String a) {
    if (isUppercase(a)) {
        return a.codeUnitAt(0) - 38;    
    }
    else {
        return a.codeUnitAt(0) - 96;
    }
}

main() {
	String test = stdin.readLineSync();
	int total = 0;

    while (test != null) {
        String div1 = test.substring(test.length ~/ 2);
        String div2 = test.substring(0, test.length ~/ 2);
        for (int i = 0; i < div1.length; i++) {
            if (div2.contains(div1[i])) {
                total += getPrioFromString(div1[i]);
                break;
            }
        }
        
        test = stdin.readLineSync();
    }
    
    print("$total");
}
