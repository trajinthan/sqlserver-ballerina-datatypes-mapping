import ballerina/io;
import ballerina/java.jdbc;
import ballerina/sql;

public function main() {
    sql:Error|jdbc:Client jdbcClient = initializeClient();

    if (jdbcClient is jdbc:Client) {
        error? err;

        //create tables with different data type categories
        err=createTables(jdbcClient);

        //insert data for all datatypes
        //err=insertData(jdbcClient);

        // select data from all tables
        // err = selectData(jdbcClient);

        if (err is error) {
            io:println(err);
        }
    } else {
        io:println("Error occurred,Client initialization failed!");
    }
}
