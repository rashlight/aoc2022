import 'dart:io';

main() {
	String test = stdin.readLineSync();
	int total = 0;

    while (test != null) {
        List<String> div = test.split(",");
        List<String> div0_str = div[0].split("-");
        List<String> div1_str = div[1].split("-");
        
        List<int> div0 = div0_str.map(int.parse).toList();
        List<int> div1 = div1_str.map(int.parse).toList();
        
        bool isOneLTwo = div1[0] <= div0[0] && div0[1] <= div1[1];
        bool isTwoLOne = div0[0] <= div1[0] && div1[1] <= div0[1];
        
        if (isOneLTwo || isTwoLOne) {
            total++;
        }
        
        test = stdin.readLineSync();
    }
    
    print("$total");
}
