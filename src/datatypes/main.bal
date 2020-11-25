import ballerina/io;
import ballerina/java.jdbc;
import ballerina/sql;


public function main() {
    sql:Error| jdbc:Client jdbcClient = initializeClient();

    if(jdbcClient is jdbc:Client){  
        error? e;

        //create tables with different data type categories
        createTables(jdbcClient);


        // if(e is error){
        //     io:println(e);
        // }
    }

    else{
        io:println("Error occurred,Client initialization failed!");
}

}