import ballerina/io;
import ballerina/java.jdbc;
import ballerina/sql;

function initializeClient() returns sql:Error|jdbc:Client {
    jdbc:Client jdbcClient = check new ("jdbc:sqlserver://localhost;databaseName=sql_datatypes;user=client;password=password");
    io:println("JDBC client created.");
    return jdbcClient;
}

function closeClient(jdbc:Client jdbcClient) returns sql:Error?{
    check jdbcClient.close();
}

