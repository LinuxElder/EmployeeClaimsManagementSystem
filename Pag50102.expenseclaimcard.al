page 50102 expenseclaimcard
{
    Caption = 'Expenses Claim Card';
    PageType = Card;
    SourceTable = expenseclaimtable;
    UsageCategory = Administration;
    ApplicationArea = All;
    DelayedInsert = false;
    layout
    {
        area(content)
        {
            group(expenseclaim)
            {
                field(username; Rec.username)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the username field.';
                    Editable = false;
                }

                field(department; Rec.department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the department field.';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        name: Record Departments;
                    begin
                        if Page.RunModal(Page::deperatmentslist, name) = Action::LookupOK then
                            departmentname := name.name;
                        Rec.department := departmentname;
                    end;
                }
                field(claimtypes; Rec.claimtypes)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the claimtype field.';
                }
                field(discription; Rec.discription)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the discription field.';
                    NotBlank = false;
                }
                field(amount; Rec.amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the amount field.';
                    NotBlank = true;
                }
                field("date"; Rec."date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the date field.';
                    Editable = false;
                    NotBlank = true;
                }
            }
        }
    }
    var
        departmentname: Text[100];
}
