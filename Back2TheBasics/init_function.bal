// The `init` function is often the last function to be ran by your code in the initialization stage

// Uninitialized `module-level`(NB: The variables not meant to be used outside your file) final or non-final variables can be initialized in this

// It should always be of type error? or () and have no parameters and never set to public

import ballerina/io;

int age; // Uninitialized(Not given a value to hold i.e. num = 12)

final string name; // Uninitialized Final String

function init() returns error? {
    age = 22 ; // Initializing the value in the init

    name = "Ndhlovu1"; // Initializing the final value

    if age < 20 {
        return error("Sorry We don't believe you are under 20");
    }

}

// The Main funtion must be called but if the condition fails then the values in the main won't run


public function main() {
    io:print("--------","NAME : ",name,"--------\n","--------","AGE : ",age,"--------");

}
// bal run init_function.bal
