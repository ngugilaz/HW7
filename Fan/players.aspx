<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="players.aspx.vb" Inherits="Admin_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1"
     runat="server"
     ConnectionString="<%$ ConnectionStrings:CS_database %>"
     SelectCommand="SELECT * FROM [Players]">
        </asp:SqlDataSource>
       

        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pID" DataSourceID="SqlDataSource1" Width="778px">
            <Columns>
                <asp:DynamicField DataField="fName" HeaderText="First Name" />
                <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
                <asp:BoundField DataField="pST" HeaderText="Position Played" SortExpression="pST" />
                <asp:HyperLinkField NavigateUrl="~/Fan/details.aspx" Text="Detail" />
            </Columns>
        </asp:GridView>
       

</asp:Content>

