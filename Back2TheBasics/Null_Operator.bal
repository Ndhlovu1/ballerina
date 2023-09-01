import ballerina/io;


//Ballerina's version of `NULL` is called `NIL` and it is written as ()
// USE == or != to test if a value is of Nill type no implicit conversion to boolean
// Placing a `?` in front indicates that a value can either be the mentioned type or ()

int? num = ();//Assigned num to NIL / NULL

int? num1 = num == () ? 0 : num; // NUM1 Can't be NIL because it is a tenary operator that has been used

int num2 = num ?: 0; // This will return NUM if it is NOT NIL else it will return zero

// Falling off the end of a function or `return` by itself is equivalent to `return ()`.
function foo() returns () {
    return ();
}
public function main() {
    io:print(num2);
}

