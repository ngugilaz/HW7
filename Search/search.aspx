<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_database %>" SelectCommand="SELECT * FROM [players3]"></asp:SqlDataSource>
        </p>
        <p>
           <%If Not IsPostBack Then%>Search for a player by name :&nbsp;&nbsp;&nbsp;

                    <asp:TextBox ID="src_tB" runat="server" Autopostback="true"></asp:TextBox>
        
            <%Else%>Search for another Player by name: &nbsp;&nbsp;&nbsp;
          
              <asp:Textbox ID="btn2" runat="server" Autopostback="True"> </asp:Textbox>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pID" DataSourceID="SqlDataSource1" Width="265px">
                <Columns>

                    <asp:BoundField DataField="fName" HeaderText="First Name" SortExpression="fName" />
                    <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
                    <asp:BoundField DataField="yOB" HeaderText="DOB" SortExpression="yOB" />
                    <asp:BoundField DataField="pST" HeaderText="Position" SortExpression="pST" />
                    <asp:BoundField DataField="mINS" HeaderText="Mins Played" SortExpression="mINS" />
                    <asp:BoundField DataField="aPPS" HeaderText="Appearances" SortExpression="aPPS" />
                    <asp:BoundField DataField="Goals" HeaderText="Goals" SortExpression="Goals" />
                </Columns>
            </asp:GridView>
            <%End If%>
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
            
