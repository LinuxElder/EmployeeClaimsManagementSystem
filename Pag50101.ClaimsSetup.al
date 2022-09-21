page 50101 ClaimsSetup
{
    Caption = 'Claims Setup';
    PageType = Card;
    SourceTable = ClaimsSetup;
    UsageCategory = Administration;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No. Series for Claims"; Rec."No. Series for Claims")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. Series for Claims field.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        No: Code[20];
    begin
        if Rec.IsEmpty() then begin
            Rec.Insert();
            No := 'AAA123123';
            No := IncStr(No);
        end;
    end;
}
