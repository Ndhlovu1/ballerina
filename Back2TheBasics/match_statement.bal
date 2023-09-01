import ballerina/io;

# MATCH STATEMENT BASICS
# 
#   1. OFTEN USED TO COMPARE THE `VALUE` NOT THE `TYPE`
#   2. == is used to test whether the left matches the value being matched
#   3. LEFT HAND CAN BE A SIMPLE LITERAL (nil, boolean, int, float, string)
#   4. CAN ALSO BE `_ , any` and you can use | to match more than 1 value 
#   5. IT WORKS LIKE A SWITCH STATEMENT
# 

function matchValue(any val) returns string{

    match val {
        1 => {
            return "Keep Reading...";
        }

        2|3|4 => {
            return "My Favourite Number is in this";
        }

        "Ndhlovu1" => {
            return "Ey, you getting the hang of things";
        }

        // `_` aka any is used to match anything else
        _ => {
            return "Well, Keep I dunno";
        }   
    }
}

public function main() {
    io:println("TEST 1 : ",matchValue("Ndhlovu1"));
    io:println("TEST 2 : ", matchValue(4));
}

