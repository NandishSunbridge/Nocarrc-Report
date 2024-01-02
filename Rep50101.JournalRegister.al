report 50101 "Journal Register"
{
    ApplicationArea = All;
    Caption = 'Journal Register';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './JournalRegister.rdl';
    dataset
    {
        dataitem(PostedGenJournalLine; "Posted Gen. Journal Line")
        {
            column(PostingDate; "Posting Date")
            {
            }
            column(GLCode; "Account No.")
            {
            }
            column(GLDescription; Description)
            {
            }
            column(Amount; Amount)
            {
            }
            column(CreditAmount; "Credit Amount")
            {
            }
            column(DebitAmount; "Debit Amount")
            {
            }
            column(DocumentNo; "Document No.")
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(StartDate; StartDate)
            {

            }
            column(EndDate; EndDate)
            {

            }
            dataitem("Posted Narration"; "Posted Narration")
            {
                DataItemLink = "Document No." = FIELD("Document No.");
                column(Narration_PostedNarration; Narration)
                {
                }
            }
            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                SetFilter("Posting Date", '%1..%2', StartDate, EndDate);
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field("Start Date"; StartDate)
                    {
                        ApplicationArea = All;
                    }
                    field("End Date"; EndDate)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var
        StartDate: Date;
        EndDate: Date;
}
