import 'dart:io';

class AgeException {
}

class NameException {
}

int getAgeTo100(int myAge) {
    return 100 - myAge;
}

int main() {
    String myName = " ";
    int myAge = 0;
    try {
        stdout.write('Enter your name: ');
        myName = stdin.readLineSync() ?? '';
        stdout.write('\nEnter your age: ');
        myAge = int.parse(stdin.readLineSync() ?? '0');
        if (myAge < 0 || myAge > 100) {
            throw(AgeException);
        }
    } catch (FormatException) {
        stdout.write('\nPlease, enter only numbers\n');
        return 0;
    } catch (AgeException) {
        stdout.write('\nNot correct age\n');
        return 0;
    } catch (NameException) {
        stdout.write('\nPlease, enter name, not age\n');
    }
    int myAgeTo100 = getAgeTo100(myAge);
    stdout.write('\nYour name: $myName,  Your age: $myAge\n');
    stdout.write('\nYour age to 100 : $myAgeTo100\n');
    return 0;
}