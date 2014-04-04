<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="Fan_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_database %>" SelectCommand="SELECT * FROM [Players]"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="pID" DataSourceID="SqlDataSource1" Height="50px" Width="575px">
        <Fields>
            <asp:BoundField DataField="fName" HeaderText="First Name" SortExpression="fName" />
            <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
            <asp:BoundField DataField="yOB" HeaderText="Year Born" SortExpression="yOB" />
            <asp:BoundField DataField="pST" HeaderText="Position Played" SortExpression="pST" />
            <asp:BoundField DataField="mINS" HeaderText="Minutes Played" SortExpression="mINS" />
            <asp:BoundField DataField="aPPS" HeaderText="Appearances" SortExpression="aPPS" />
            <asp:BoundField DataField="gOAL" HeaderText="Goals Scored" SortExpression="gOAL" />
        </Fields>
    </asp:DetailsView>

</asp:Content>

