import ballerina/io;

//The ? allows the cmd to return error or nill
//The public visibility makes this function visible outside the module, else it will cause an error at compile
public function main(int value) returns error? {
    //io:println(value);

    //A basic conditional operation
    if value >= 10{
        return error("Input should be less than 10");
    }
    else{
        io:print(value," : GREAT JOB ENTERING A NUMBER LESS THAN 10");
        
    }
    
}

//Run the function and pass the argument with a --
// e.g. bal run file_name.bal -- value_number 
// bal run main_function.bal -- 23 // should give the error message instead

