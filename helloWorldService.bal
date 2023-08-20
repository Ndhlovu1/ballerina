//Building a service of HelloWorld as an HTTP product

import ballerina/http;

service  on new http:Listener(0) {
    //This will return a listener program
    resource function get greeting() returns string{
        return "Welcome to Ballerina\nMr T Ndhlovu";        
    }
}

//RUN PRODUCT
//bal run helloWorldService.bal
//either use curl http://localhost:9000/greeting or attempt to open it in the browser





