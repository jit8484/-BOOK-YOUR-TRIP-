<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="placesresults.aspx.cs" Inherits="placesresults" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
        
                    SelectCommand="SELECT [PlaceID], [Name], [Picture] FROM [addplaces] WHERE ([Name] LIKE '%' + @Name + '%')" 
                    onselected="SqlDataSource1_Selected">
        <SelectParameters>
            <asp:QueryStringParameter Name="Name" QueryStringField="s" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="PlaceID" DataSourceID="SqlDataSource1" Height="250px" 
        Width="635px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:ImageField DataImageUrlField="Picture" 
                DataImageUrlFormatString="images/{0}" HeaderText="Place pic">
                <ControlStyle Height="125px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:HyperLinkField DataNavigateUrlFields="Placeid" 
                DataNavigateUrlFormatString="placedtls.aspx?pid={0}" 
                HeaderText="Click to show Details" Text="Show Details" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

