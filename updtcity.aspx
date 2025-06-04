<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updtcity.aspx.cs" Inherits="updtcity" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 293px;
        }
        .style6
        {
            width: 293px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style8
    {
        width: 319px;
    }
    .style9
    {
        width: 319px;
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
                &nbsp;Update City</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                State</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" 
                    DataValueField="StateID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [StateID], [Name] FROM [addstates]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
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
                    DataKeyNames="CityID" DataSourceID="SqlDataSource2" Height="78px" Width="395px">
                    <Columns>
                        <asp:ImageField HeaderText="City Pic" DataImageUrlField="Pic" 
                            DataImageUrlFormatString="images/{0}">
                            <ControlStyle Height="120px" Width="120px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:HyperLinkField HeaderText="Click to Update" Text="Update" 
                            DataNavigateUrlFields="cityid" 
                            DataNavigateUrlFormatString="updtcitydtls.aspx?ctid={0}" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT * FROM [addcity] WHERE ([Stateid] = @Stateid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Stateid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

