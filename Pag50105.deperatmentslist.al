page 50105 deperatmentslist
{
    ApplicationArea = All;
    Caption = 'Deperatments List';
    PageType = List;
    SourceTable = Departments;
    CardPageId = depertmentscard;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
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
                    NotBlank = true;
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the discription field.';
                }
            }
        }
    }
}
