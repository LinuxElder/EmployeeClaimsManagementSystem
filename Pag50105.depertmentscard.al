page 50106 depertmentscard
{
    Caption = 'Depertments Card';
    PageType = Card;
    SourceTable = Departments;
    UsageCategory = Administration;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(General)
            {
                field(PKEY; Rec.PKEY)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the name field.';


                }
                field(name; Rec.name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the name field.';
                }
                field(discription; Rec.discription)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the discription field.';
                }
            }
        }
    }
}
