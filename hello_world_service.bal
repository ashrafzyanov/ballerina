import ballerina/http;

service hello on new http:Listener(9090) {
    resource function seyHello(http:Caller caller, http:Request req) returns error? {
        check caller->respond("Hello, World!");
    }
}