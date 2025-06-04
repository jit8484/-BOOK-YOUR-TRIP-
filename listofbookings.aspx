<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="listofbookings.aspx.cs" Inherits="listofbookings" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            List of Bookings</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                    <asp:BoundField DataField="Personsadults" HeaderText="Personsadults" 
                        SortExpression="Personsadults" />
                    <asp:BoundField DataField="Personschild" HeaderText="Personschild" 
                        SortExpression="Personschild" />
                    <asp:BoundField DataField="Dateofarrival" HeaderText="Dateofarrival" 
                        SortExpression="Dateofarrival" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" 
                        SortExpression="Contact" />
                    <asp:BoundField DataField="Orderno" HeaderText="Orderno" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Orderno" />
                    <asp:BoundField DataField="BookingDt" HeaderText="BookingDt" 
                        SortExpression="BookingDt" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                SelectCommand="SELECT [Pname], [Personsadults], [Personschild], [Dateofarrival], [Name], [Address], [Contact], [Orderno], [BookingDt] FROM [packagedata] ORDER BY [BookingDt] DESC">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

