//Building a service of HelloWorld as an HTTP product

import ballerina/http;

service  on new http:Listener(9090) {
    //This will return a listener program
    resource function get greeting() returns string{
        return "Welcome to Ballerina Mr T Ndhlovu\n";        
    }
}

//RUN PRODUCT
//bal run helloWorldService.bal
//either use curl curl http://localhost:9090/greeting or Run it in the browser
//You can also change the listener port number





