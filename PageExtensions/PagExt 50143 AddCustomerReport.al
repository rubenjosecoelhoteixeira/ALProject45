pageextension 50143 AddCustomerReport extends "Customer List"
{
    actions
    {
        addlast("&Customer")
        {
            action("Customer List Report")
            {
                trigger OnAction();
                var
                    rep: Report "Customer - List";
                begin
                    rep.Run();
                end;
            }
            action("Export Contact List")
            {
                trigger OnAction();
                var
                    xml: XmlPort "Export Contact";
                begin
                    xml.Run();
                end;
            }
        }
    }
}