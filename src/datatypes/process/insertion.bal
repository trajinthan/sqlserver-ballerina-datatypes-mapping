import ballerina/io;
import ballerina/sql;
import ballerina/java.jdbc;

function insertExactNumeric(jdbc:Client jdbcClient) returns sql:Error? {
    int big_int = 9223372036854775807;
    decimal numeric = 12.12000;
    int bit = 1;
    float small_int = 32767;
    float decimalc = 123.00;
    float small_money = 214748.3647;
    decimal intc = 2147483647;
    int tiny_int = 255;
    float money = 922337203685477.2807;

    sql:ParameterizedQuery insertQuery = `INSERT INTO ExactNumeric (BigInt_col, Numeric_col, Bit_col, 
             SmallInt_col, Decimal_col, SmallMoney_col, Int_col,TinyInt_col, Money_col) VALUES (${
    big_int}, ${numeric},
             ${bit}, ${small_int}, ${decimalc}, ${small_money},${intc},${tiny_int},${money})`;

    sql:ExecutionResult|sql:Error result = jdbcClient->execute(insertQuery);

    if (result is sql:ExecutionResult) {
        io:println("ExactNumeric Insertion Success");
    } else {
        io:println("ExactNumeic Insertion Failed", result);
    }
}

function insertApproximateNumeric(jdbc:Client jdbcClient) returns sql:Error? {
    float floatc = 1.79E+308;
    decimal real = -1.18E-38;

    sql:ParameterizedQuery insertQuery = 
    `INSERT INTO ApproximateNumeric (Float_col, Real_col) VALUES (${floatc}, ${real})`;

    sql:ExecutionResult|sql:Error result = jdbcClient->execute(insertQuery);

    if (result is sql:ExecutionResult) {
        io:println("Approx Numeric Insertion Success");
    } else {
        io:println("Approx Numeric Insertion Failed", result);
    }
}

function insertDateAndTime(jdbc:Client jdbcClient) returns sql:Error? {
    sql:DateValue date = new ("2017-06-26");
    sql:TimestampValue date_time_offset = new ("2020-01-01 19:14:51");
    sql:TimestampValue date_time2 = new ("1900-01-01 00:25:00.0021425");
    sql:TimestampValue small_date_time = new ("2007-05-10 10:00:20");
    sql:TimestampValue date_time = new ("2017-06-26 09:54:21.325");
    sql:TimeValue time = new ("09:46:22");

    sql:ParameterizedQuery insertQuery = `INSERT INTO DateandTime (Date_col,DateTimeOffset_col,DateTime2_col,SmallDateTime_col,DateTime_col,Time_col) VALUES
             (${
    date},${date_time_offset},${date_time2},${small_date_time},${date_time},${time}
            )`;

    sql:ExecutionResult|sql:Error result = jdbcClient->execute(insertQuery);

    if (result is sql:ExecutionResult) {
        io:println("Date and Time Insertion Success");
    } else {
        io:println("Date and Time Insertion Failed", result);
    }
}

function insertString(jdbc:Client jdbcClient) returns sql:Error? {
    string char = "";
    sql:CharValue varchar = new ("r");
    sql:TextValue text = new ("aeeecdefabcd12345567888822");

    sql:ParameterizedQuery insertQuery = `INSERT INTO CharacterString (Char_col,Varchar_col, Text_col) VALUES (${char}, ${
    varchar},
             ${text})`;

    sql:ExecutionResult|sql:Error result = jdbcClient->execute(insertQuery);

    if (result is sql:ExecutionResult) {
        io:println("String Insertion Success");
    } else {
        io:println("String Insertion Failed", result);
    }
}

function insertUnicodeString(jdbc:Client jdbcClient) returns sql:Error? {
    string nchar = "";
    sql:CharValue nvarchar = new ("r");
    sql:TextValue ntext = new ("aeeecdefabcd12345567888822");

    sql:ParameterizedQuery insertQuery = `INSERT INTO UnicodeString (nChar_col,nVarchar_col, nText_col) VALUES (${nchar}, ${
    nvarchar},
             ${ntext})`;

    sql:ExecutionResult|sql:Error result = jdbcClient->execute(insertQuery);

    if (result is sql:ExecutionResult) {
        io:println("UnicodeString Insertion Success");
    } else {
        io:println("UnicodeString Insertion Failed", result);
    }
}

function insertBinaryString(jdbc:Client jdbcClient) returns sql:Error? {
    sql:BinaryValue binary = new ();
    sql:VarBinaryValue varbinary = new ();
    sql:VarBinaryValue image = new ();

    sql:ParameterizedQuery insertQuery = `INSERT INTO BinaryString (Binary_col,VarBinary_col,Image_col) VALUES (${binary}, ${
    varbinary},${image}
            )`;

    sql:ExecutionResult|sql:Error result = jdbcClient->execute(insertQuery);

    if (result is sql:ExecutionResult) {
        io:println("Binary String Insertion success");
    } else {
        io:println("Binary String Insertion Failed", result);
    }
}

function insertData(jdbc:Client jdbcClient) {
    sql:Error? err;

    err = insertExactNumeric(jdbcClient);
    err = insertApproximateNumeric(jdbcClient);
    err = insertDateAndTime(jdbcClient);
    err = insertString(jdbcClient);
    err = insertUnicodeString(jdbcClient);
    err = insertBinaryString(jdbcClient);
}
