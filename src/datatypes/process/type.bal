type ExactNumeric record {|
    int BigInt_col;
    boolean Bit_col;
    string SmallInt_col;
    decimal Decimal_col;
    int Smallmoney_col;
    string Int_col;
    string Tinyint_col;
    int Money_col;
    int Numeric_col;
   
|};

type ApproximateNumeric record {|
    decimal Float_col;
    float Real_col;
   
|};

type DateAndTime record {|
    int Date_col;
    string DateTimeOffset_col;
    int DateTime2_col;
    int SmallDateTime_col;
    int DateTime_col;
    int Time_col;
|};

type CharacterString record {|
    string Char_col;
    string VarChar_col;
    string Text_col;
   
|};

type UnicodeString record {|
    string nChar_col;
    string nVarchar_col;
    string nText_col;
   
|};

type BinaryString record {|
    string Binary_col;
    string VarBinary_col;
    string Image_col;
   
|};

