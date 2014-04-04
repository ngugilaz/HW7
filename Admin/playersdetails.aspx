<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="playersdetails.aspx.vb" Inherits="Admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_database %>" SelectCommand="SELECT * FROM [players3] WHERE ([pID] = @pID)" DeleteCommand="DELETE FROM [players3] WHERE [pID] = @pID" InsertCommand="INSERT INTO [players3] ([fName], [lName], [yOB], [pST], [mINS], [aPPS], [Goals]) VALUES (@fName, @lName, @yOB, @pST, @mINS, @aPPS, @Goals)" UpdateCommand="UPDATE [players3] SET [fName] = @fName, [lName] = @lName, [yOB] = @yOB, [pST] = @pST, [mINS] = @mINS, [aPPS] = @aPPS, [Goals] = @Goals WHERE [pID] = @pID">
        <DeleteParameters>
            <asp:Parameter Name="pID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="fName" Type="String" />
            <asp:Parameter Name="lName" Type="String" />
            <asp:Parameter Name="yOB" Type="Int32" />
            <asp:Parameter Name="pST" Type="String" />
            <asp:Parameter Name="mINS" Type="Int32" />
            <asp:Parameter Name="aPPS" Type="Int32" />
            <asp:Parameter Name="Goals" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="pID" QueryStringField="pID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="fName" Type="String" />
            <asp:Parameter Name="lName" Type="String" />
            <asp:Parameter Name="yOB" Type="Int32" />
            <asp:Parameter Name="pST" Type="String" />
            <asp:Parameter Name="mINS" Type="Int32" />
            <asp:Parameter Name="aPPS" Type="Int32" />
            <asp:Parameter Name="Goals" Type="Int32" />
            <asp:Parameter Name="pID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:DetailsView ID="DetailsView1" runat="server" Height="110px" Width="298px" AutoGenerateRows="False" DataKeyNames="pID" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin-top: 116px">
        <Fields>
            <asp:BoundField DataField="fName" HeaderText="First Name" SortExpression="fName" />
            <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
            <asp:BoundField DataField="yOB" HeaderText="DOB" SortExpression="yOB" />
            <asp:BoundField DataField="pST" HeaderText="Position" SortExpression="pST" />
            <asp:BoundField DataField="mINS" HeaderText="Mins Played" SortExpression="mINS" />
            <asp:BoundField DataField="aPPS" HeaderText="Appearances" SortExpression="aPPS" />
            <asp:BoundField DataField="Goals" HeaderText="Goals" SortExpression="Goals" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

</asp:Content>

