import ballerina/io;

// Variables and Data Types
int num = 44;

float float_num = -103.342;

boolean happy = true;

string greeting = "Welcome Home!";

public function main() {
    string name = "Mr. T Ndhlovu\n";

    io:print(greeting," ",name);

    io:print("\nInt : ", num,"\n");
    
    io:print("\nFloat : ", float_num,"\n");
}



