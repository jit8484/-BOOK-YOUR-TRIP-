<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updtplace.aspx.cs" Inherits="updtplace" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 309px;
        }
        .style6
        {
            width: 309px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style8
    {
        width: 315px;
    }
    .style9
    {
        width: 315px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style8">
                <h2>
                Update Place</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                State</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="StateID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [StateID], [Name] FROM [addstates]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style9">
                City</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="CityID" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [CityID], [Name] FROM [addcity] WHERE ([Stateid] = @Stateid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Stateid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="PlaceID" DataSourceID="SqlDataSource3" Height="211px" 
                    Width="517px" style="font-weight: 700; font-size: small;" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Picture" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Place Pic">
                            <ControlStyle Height="120px" Width="120px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="placeid" 
                            DataNavigateUrlFormatString="updtplacedtls.aspx?plid={0}" 
                            HeaderText="Click to update" Text="Update" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [PlaceID], [Name], [Picture] FROM [addplaces] WHERE (([CityID] = @CityID) AND ([StateID] = @StateID))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="CityID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="StateID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

