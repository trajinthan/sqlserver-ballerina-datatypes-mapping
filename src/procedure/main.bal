import ballerina/io;
import ballerina/java.jdbc;
import ballerina/sql;

public function main() {
    sql:Error|jdbc:Client jdbcClient = initializeClient();

    if (jdbcClient is jdbc:Client) {
        error? err;
        err = createAllProcedures(jdbcClient);
      
        if (err is error) {
            io:println(err);
        }
    } else {
        io:println("Error occurred,Client initialization failed!");
    }
}
