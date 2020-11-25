import ballerina/io;
import ballerina/java.jdbc;
import ballerina/sql;

function initializeClient() returns sql:Error|jdbc:Client {
    jdbc:Client jdbcClient = check new ("jdbc:sqlserver://localhost;databaseName=Ballerina;user=client;password=raji1234");
    io:println("JDBC client created.");
    return jdbcClient;
}

function closeClient(jdbc:Client jdbcClient) returns sql:Error?{
    check jdbcClient.close();
}

public function main() {
    sql:Error| jdbc:Client jdbcClient = initializeClient();
    if(jdbcClient is jdbc:Client){  
        error? e;

        e = closeClient(jdbcClient);

        if(e is error){
            io:println(e);
        }

    } else{
        io:println("Error occurred,Client initialization failed!");
    }

}