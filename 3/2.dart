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
	String test = "";
	int total = 0;

    while (true) {
        String div1 = stdin.readLineSync();
        String div2 = stdin.readLineSync();
        String div3 = stdin.readLineSync();
        
        if (div1 == null || div2 == null || div3 == null) {
            break;
        }
        
        for (int i = 0; i < div1.length; i++) {
            if (div2.contains(div1[i]) && div3.contains(div1[i])) {
                total += getPrioFromString(div1[i]);
                break;
            }
        }
        
    }
    
    print("$total");
}
