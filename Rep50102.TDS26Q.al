report 50102 "TDS-26Q"
{
    ApplicationArea = All;
    Caption = 'TDS-26Q';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './TDS-26Q.rdl';
    dataset
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {
            column(No; "No.")
            {
            }
            column(SelltoCustomerName; "Sell-to Customer Name")
            {
            }
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            dataitem(Customer; Customer)
            {
                column(P_A_N__No_; "P.A.N. No.")
                {
                }
                column(CopySelltoAddrtoQteFrom_Customer; "Copy Sell-to Addr. to Qte From")
                {
                }
            }
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
}
