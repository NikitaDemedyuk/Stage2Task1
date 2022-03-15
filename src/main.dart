import 'dart:io';

class AgeException implements Exception {
    String getErrorMessage() {
        return "\nNot correct age\n";
    }
}

int getAgeTo100(int myAge) {
    if (myAge >= 100) {
        return 100;
    } else {
        return 100 - myAge;
    }
}

int main() {
    String myName = " ";
    int myAge = 0;

    try {
        stdout.write('Enter your name: ');
        myName = stdin.readLineSync() ?? ' ';
        stdout.write('\nEnter your age: ');
        myAge = int.parse(stdin.readLineSync() ?? '0');
        if (myAge < 0) {
            throw AgeException();
        }
    } on FormatException {
        stdout.write('\nPlease, enter only numbers\n');
        return 0;
    } on AgeException catch(e) {
        stdout.write(e.getErrorMessage());
        return 0;
    }

    stdout.write('\nYour name: $myName,  Your age: $myAge\n');

    if (getAgeTo100(myAge) == 100) {
        stdout.write('\nYou are already 100 years old\n');
    } else {
        stdout.write('\nYour age to 100 : ${getAgeTo100(myAge)}\n');
    }
    return 0;
}