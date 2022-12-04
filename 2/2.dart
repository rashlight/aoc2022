import 'dart:io';

int getVal(String op) {
	switch (op) {
		case "X":
			return 1;
		case "Y":
			return 2;
		case "Z":
			return 3;
		default:
			throw "Val N/A";
	}
}

int getRPS(String op1, String op2) {
	switch (op1) {
	    case "A":
	        switch (op2) {
	            case "X":
	                return 3;
	            case "Y":
	                return 4;
	            case "Z":
	                return 8;
	            default:
	                throw "RPS N/A";
	        }
	        break;
	    case "B":
	    	switch (op2) {
	            case "X":
	                return 1;
	            case "Y":
	                return 5;
	            case "Z":
	                return 9;
	            default:
	                throw "RPS N/A";
	        }
	        break;
	    case "C":
	    	switch (op2) {
	            case "X":
	                return 2;
	            case "Y":
	                return 6;
	            case "Z":
	                return 7;
	            default:
	                throw "RPS N/A";
	        }
	        break;
	    default:
	        throw "RPS N/A";
	}
}

int getScore(int res) {
	switch (res) {
		case 1:
			return 6;
		case 0:
			return 3;
		case -1:
			return 0;
		default:
		    throw "Score N/A";
	}
}

main() {
	
	String line = stdin.readLineSync();
	int score = 0;

	while (line != null) {
		List<String> split = line.split(" ");
		score += getRPS(split[0], split[1])
		line = stdin.readLineSync();
	}
	
	print(score);
}
