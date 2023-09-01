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
int vote_age = 18;


function canVote(int age){
    if(age >= vote_age) {
        io:print("Congrats, you can vote! AGE : [ ",age," ]years old! \n");
    }
    else {
        int time_to_vote = vote_age - age;
        io:print("Sorry age must be [ 18+ ] to vote,you are [ ",age," ]years old. You still have ",time_to_vote,"years left to vote\n") ;
    }
}

# -------------------STRINGS-------------------
# 
# CAN BE COMPARED BY USING THE :
#       `==` or the `>= , <=` or the `> , <`
#       They allow the comparing of strings if they all have the same character sequences
# 
# Below is a program that accepts a Name and age, then based on those values directs the user else where
# 
#

function congratsGrad(int age, string name){
    //Create local variables for both parameters, then use them in the comparison
    int grad_age = 21;
    string grad_name = "Ndhlovu1";

    if (age >= grad_age && name == grad_name ) {
        io:print("Congrats ",grad_name," you are now ",age,"years old!\n");
        io:print("--GIFT BELOW--\nYou get a free pass to travel the world\n");
        
    }
    else if(age < grad_age || name != grad_name) {
        io:print("Congrats ",name," you are now ",age,"years old!\n");    
    }

    else {
        io:print("ENTER [AGE AS A NUMBER] AND NAME TO SUCCEED\n");
    }
}

# COMPARING DATA TYPES
#   The `if` statement can be used for type checking
#       
#       int | string newScore = 21
#       
#       if newScore is int {
#           io:println(newScore)
#           }
#       else{
#           io:println("Score is not an integer")
#           }
# 

// FUNCTION TO GET STUDENT GRADES
function getGrades(int score) returns string {
    // Parentheses are optional in conditions.
    // However, curly braces are required in `if/else` statements.
    if 0 < score && score < 55 {
        return "F";
    } else if 55 <= score && score < 65 {
        return "C";
    } else if 65 <= score && score < 75  {
        return "B";
    } else if 75 <= score && score <= 100 {
        return "A";
    } else {
        return "Invalid grade";
    }
}

public function main() {
    io:print(num2,"\n");
    //Call the CanVote Function
    canVote(10);
    canVote(23);
    canVote(6);
    
    io:print("\n------ RUNNING NAME & AGE SURPRISE ---------\n ");
    congratsGrad(20, "Tino");
    congratsGrad(18, "Samantha");
    congratsGrad(23,"Ndhlovu1");

    io:print("\n------ RUNNING NAME & AGE SURPRISE ---------\n ");
    int | string newScore = 26;

    if (newScore is int) {
        io:println(getGrades(newScore));
    }
    else {
        io:println("ONLY NUMBERS ALLOWED");
    }
 
    
}

