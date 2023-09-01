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
        

    
}

