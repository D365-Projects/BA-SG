reportextension 50100 JObQuote_SG extends "Job Quote"
{

    dataset
    {
        add("Job Planning Line")
        {
            column(Unit_of_Measure_Code; "Unit of Measure Code") { }

        }

    }

    requestpage
    {
    }

    rendering
    {
        layout("Project Job Quote(RDLC)")
        {
            Type = RDLC;
            LayoutFile = './Layouts/JobsQuote.rdl';
        }
    }
}