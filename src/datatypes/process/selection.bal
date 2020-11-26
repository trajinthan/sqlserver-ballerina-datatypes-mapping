import ballerina/io;
import ballerina/java.jdbc;
import ballerina/sql;

function selectExactNumeric(jdbc:Client jdbcClient)returns sql:Error? {
    stream<record{}, error> resultStream = jdbcClient->query("Select * from ExactNumeric", ExactNumeric);
    stream<ExactNumeric, sql:Error> ExactNumericStream = <stream<ExactNumeric, sql:Error>>resultStream;

    error? e = ExactNumericStream.forEach(function(ExactNumeric data) {
        io:println("ExactNumeric : ",data);
    });

    if (e is error) {
        io:println(e);
    }
}

function selectApproximateNumeric(jdbc:Client jdbcClient)returns sql:Error?  {
    stream<record{}, error> resultStream = jdbcClient->query("Select * from ApproximateNumeric", ApproximateNumeric);
    stream<ApproximateNumeric, sql:Error> ApproximateNumericStream = <stream<ApproximateNumeric, sql:Error>>resultStream;

    error? e = ApproximateNumericStream.forEach(function(ApproximateNumeric data) {
        io:println("ApproximateNumeric : ",data);
    });

    if (e is error) {
        io:println(e);
    }
}

function selectDateandTime(jdbc:Client jdbcClient)returns sql:Error?  {
    stream<record{}, error> resultStream =jdbcClient->query("Select * from DateandTime", DateandTime);
    stream<DateandTime, sql:Error> DateandTimeStream = <stream<DateandTime, sql:Error>>resultStream;

    error? e = DateandTimeStream.forEach(function(DateandTime data) {
        io:println("DateandTime : ",data);
    });

    if (e is error) {
        io:println(e);
    }
}

function selectCharacterString(jdbc:Client jdbcClient)returns sql:Error?  {
    stream<record{}, error> resultStream = jdbcClient->query("Select * from CharacterString", CharacterString);
    stream<CharacterString, sql:Error> CharacterStringStream = <stream<CharacterString, sql:Error>>resultStream;

    error? e = CharacterStringStream.forEach(function(CharacterString data) {
        io:println("CharacterString : ",data);
    });

    if (e is error) {
        io:println(e);
    }
}

function selectUnicodeString(jdbc:Client jdbcClient)returns sql:Error?  {
    stream<record{}, error> resultStream = jdbcClient->query("Select * from UnicodeString", UnicodeString);
    stream<UnicodeString, sql:Error> UnicodeStringStream = <stream<UnicodeString, sql:Error>>resultStream;

    error? e = UnicodeStringStream.forEach(function(UnicodeString data) {
        io:println("UnicodeString : ",data);
    });

    if (e is error) {
        io:println(e);
    }
}

function selectBinaryString(jdbc:Client jdbcClient)returns sql:Error?  {
    stream<record{}, error> resultStream = jdbcClient->query("Select * from BinaryString", BinaryString);
    stream<BinaryString, sql:Error> BinaryStringStream = <stream<BinaryString, sql:Error>>resultStream;

    error? e = BinaryStringStream.forEach(function(BinaryString data) {
        io:println("BinaryString : ",data);
    });

    if (e is error) {
        io:println(e);
    }
}



function selectData(jdbc:Client jdbcClient){
    sql:Error? err;

    err=selectExactNumeric(jdbcClient);
    err=selectApproximateNumeric(jdbcClient);
    err=selectDateandTime(jdbcClient);
    err=selectCharacterString(jdbcClient);
    err=selectUnicodeString(jdbcClient);
    err=selectBinaryString(jdbcClient);
}