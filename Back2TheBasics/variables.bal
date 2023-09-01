import ballerina/io;

// Variables and Data Types
int num = 44;

//Hex Number
int n = 0xFFFF;

//Concatenate or Comput Assignmnet Operator 


float float_num = -103.342;

//`f` or `F` or `d` or `D` can all be used as float values or decimal values
var f_loat = 1234f;

var d_ecimal = 123d;

boolean happy = true;

string greeting = "Welcome Home!";

//Representing 12-Bits of IEEE 754R 
decimal number = 1d/1000000000d;

public function main() {
    string name = "Mr. T Ndhlovu\n";

    io:print(n,"- Hex Value\n");

    io:print(d_ecimal,"- Decimal\n");


    io:print(f_loat,"- Float\n");

    n += num;
    io:print(n, "- Updated N Value Via Compunding\n");

    io:print(greeting," ",name);

    io:print("\nInt : ", num,"\n");
    
    io:print("\nFloat : ", float_num,"\n");

    io:print("\nDecimal Number : ", number,"\n");

    //Test for type check
    io:print(number is decimal,"- is decimal\n");
}



