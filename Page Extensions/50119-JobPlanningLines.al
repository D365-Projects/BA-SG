pageextension 50119 "JobPlanningLines EXT" extends "Job Planning Lines"
{
    layout
    {
        addafter(Description)
        {
            field(Details_DBS; Rec.Details)
            {
                ApplicationArea = all;
            }
            field(Milestone_DBS; Rec.Milestone)
            {
                ApplicationArea = all;
            }
            field("Milestone %_DBS"; Rec."Milestone %")
            {
                ApplicationArea = all;
            }
            field("Contract Price_DBS"; Rec."Contract Price")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}