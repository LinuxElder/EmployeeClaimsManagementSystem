table 50105 Departments
{
    Caption = 'Departments';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PKEY; Code[10])
        {
            Caption = 'PKEY';
            DataClassification = ToBeClassified;
        }
        field(2; name; Text[30])
        {
            Caption = 'name';
            DataClassification = ToBeClassified;
            // TableRelation = Departments.name;
        }
        field(3; discription; Text[300])
        {
            Caption = 'discription';
            DataClassification = ToBeClassified;
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

