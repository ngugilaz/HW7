<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Search_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_database %>" SelectCommand="SELECT * FROM [players3]"></asp:SqlDataSource>
      

           <%If Not IsPostBack Then%>
                Search for a player by name :

                    <asp:TextBox ID="src_tB" runat="server" ></asp:TextBox>
        
            <%Else%>Search for another Player by name: 
          
              <asp:Textbox ID="btn2" runat="server" > </asp:Textbox>


            <asp:GridView ID="GridView1" 
                runat="server"
                 AllowSorting="True" 
                AutoGenerateColumns="False" 
                DataKeyNames="pID" 
                DataSourceID="SqlDataSource1" 
                Width="735px">
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

</asp:Content>

