import ballerina/io;
import ballerina/java.jdbc;
import ballerina/sql;


public function main() {
    sql:Error| jdbc:Client jdbcClient = initializeClient();

    if(jdbcClient is jdbc:Client){  
        error? e;

        //create tables with different data type categories
        //e=createTables(jdbcClient);

        //insert data for all datatypes
        //e=insertData(jdbcClient);

        //select data from all tables
        e=selectData(jdbcClient);

        if(e is error){
            io:println(e);
        }
    }

    else{
        io:println("Error occurred,Client initialization failed!");
}

}