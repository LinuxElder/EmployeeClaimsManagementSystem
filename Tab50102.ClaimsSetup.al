table 50102 ClaimsSetup
{
    Caption = 'ClaimsSetup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PKEY; Code[10])
        {
            Caption = 'PKEY';
            DataClassification = ToBeClassified;
        }
        field(2; "No. Series for Claims"; Code[20])
        {
            Caption = 'No. Series for Claims';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
    }
    keys
    {
        key(PK; PKEY)
        {
            Clustered = true;
        }
    }
}
