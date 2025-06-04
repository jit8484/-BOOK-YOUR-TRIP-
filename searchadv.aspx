<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="searchadv.aspx.cs" Inherits="searchadv" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 212px;
        }
        .style10
        {
            width: 212px;
            height: 59px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style11
        {
            height: 59px;
        }
        .style12
        {
            width: 212px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style9">
                <h2>
                    Advance Search</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                Choose State</td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="StateID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [StateID], [Name] FROM [addstates]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Choose City</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CityID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
            <td class="style12">
                Choose Category</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" 
                    DataValueField="CategoryID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [CategoryID], [Name] FROM [addcategory]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style12" valign="top">
                Place</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="PlaceID" DataSourceID="SqlDataSource3" Height="177px" 
                    Width="477px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Picture" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Place Pic">
                            <ControlStyle Height="125px" Width="120px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="Placeid" 
                            DataNavigateUrlFormatString="placedtls.aspx?pid={0}" 
                            HeaderText="click to view details" Text="Show Details" />
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
                    
                    SelectCommand="SELECT [PlaceID], [Name], [Picture] FROM [addplaces] WHERE (([StateID] = @StateID) AND ([CityID] = @CityID) AND ([CategoryID] = @CategoryID))" 
                    onselected="SqlDataSource3_Selected">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="StateID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="CityID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="CategoryID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

