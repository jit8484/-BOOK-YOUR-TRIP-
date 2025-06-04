<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="addplaces.aspx.cs" Inherits="addplaces" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 250px;
        }
        .style10
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style11
        {
            width: 250px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style12
        {
            width: 250px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            height: 23px;
        }
        .style13
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            height: 23px;
        }
        .style14
        {
            width: 250px;
            height: 23px;
        }
        .style15
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style9">
                <h2>
                    Add Places</h2>
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
            <td class="style12">
                Place Name</td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                State</td>
            <td class="style10">
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
            <td class="style11">
                City</td>
            <td class="style10">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="CityID">
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
            <td class="style11">
                Category</td>
            <td class="style10">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="CategoryID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [CategoryID], [Name] FROM [addcategory]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Description</td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server" Height="116px" TextMode="MultiLine" 
                    Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Picture</td>
            <td class="style10">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload4" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload5" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload6" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload7" runat="server" />
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
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add places" />
            </td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

