type ExactNumeric record {|
    int BigInt_col;
    int Bit_col;
    int SmallInt_col;
    int Decimal_col;
    int Smallmoney_col;
    int Int_col;
    int Tinyint_col;
    int Money_col;
    int Numeric_col;
   
|};

type ApproximateNumeric record {|
    decimal Float_col;
    float Real_col;
   
|};

type DateandTime record {|
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

