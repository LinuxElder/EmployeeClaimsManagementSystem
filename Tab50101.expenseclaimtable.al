table 50101 expenseclaimtable
{
    Caption = 'expenseclaimtable';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; claimid; Code[30])
        {
            Caption = 'claimnumber';
            DataClassification = ToBeClassified;

        }
        field(2; userid; Text[30])
        {
            Caption = 'userid';
            DataClassification = ToBeClassified;

        }
        field(3; username; Text[30])
        {
            Caption = 'username';
            DataClassification = ToBeClassified;
        }
        field(4; department; Text[30])
        {
            Caption = 'department';
            DataClassification = ToBeClassified;
        }
        field(5; claimtype; Text[30])
        {
            Caption = 'claimtype';
            DataClassification = ToBeClassified;
        }
        field(6; discription; Text[200])
        {
            Caption = 'discription';
            DataClassification = ToBeClassified;
            NotBlank = false;
        }
        field(7; amount; Decimal)
        {
            Caption = 'amount';
            DataClassification = ToBeClassified;
            // The "MinValue" property sets the minimum value for the "Discount Percentage"
            // field.
            MinValue = 0;
            NotBlank = false;
            // The "DecimalPlaces" property is set to 2 to display discount values with
            // exactly 2 decimals.
            DecimalPlaces = 2;
        }
        field(8; "date"; Date)
        {
            Caption = 'date';
            DataClassification = ToBeClassified;
        }
        field(9; claimtypes; Enum claimtype)
        {
            Caption = 'claimtypes';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; claimid)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        Setup: Record "ClaimsSetup";
        NoMgt: Codeunit NoSeriesManagement;
        ClaimNo: Enum claimtype;
    begin

        if claimid = '' then begin
            //Message('empty');
            Setup.Get();
            Rec.claimid := NoMgt.GetNextNo(Setup."No. Series for Claims", WorkDate(), true);
            Rec.username := Database.UserId();
            Rec.date := Today;
        end;



    end;
}
