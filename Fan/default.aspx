<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Fan_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" Width="574px">
    <Columns>
        <asp:BoundField DataField="pID" HeaderText="pID" SortExpression="pID" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
        <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
        <asp:BoundField DataField="yOB" HeaderText="yOB" SortExpression="yOB" />
        <asp:BoundField DataField="pST" HeaderText="pST" SortExpression="pST" />
        <asp:BoundField DataField="mINS" HeaderText="mINS" SortExpression="mINS" />
        <asp:BoundField DataField="aPPS" HeaderText="aPPS" SortExpression="aPPS" />
        <asp:BoundField DataField="Goals" HeaderText="Goals" SortExpression="Goals" />
    </Columns>
</asp:GridView>
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
       
         

</asp:Content>

