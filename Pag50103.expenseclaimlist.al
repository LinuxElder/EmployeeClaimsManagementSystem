page 50103 expenseclaimlist
{
    Caption = 'Expenses Claim List';
    PageType = List;
    SourceTable = expenseclaimtable;
    CardPageId = "expenseclaimcard";
    UsageCategory = Administration;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(claimid; Rec.claimid)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the claimnumber field.';
                }
                field(userid; Rec.userid)
                {
                    ApplicationArea = none;
                    ToolTip = 'Specifies the value of the userid field.';
                }
                field(username; Rec.username)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the username field.';
                }
                field(department; Rec.department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the department field.';
                }
                field(claimtype; Rec.claimtypes)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the claimtype field.';
                }
                field(discription; Rec.discription)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the discription field.';
                }
                field(amount; Rec.amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the amount field.';
                }
                field("date"; Rec."date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the date field.';
                }
            }
        }
    }
}
