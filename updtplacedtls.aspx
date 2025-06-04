<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updtplacedtls.aspx.cs" Inherits="updtplacedtls" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 296px;
        }
        .style6
        {
            width: 296px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style8
    {
        width: 252px;
    }
    .style9
    {
        width: 252px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" align="center" width="100%">
        <tr>
            <td class="style8">
                <h2>
                Update Details</h2>
            </td>
            <td>
                <h2>
                </h2>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Place Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                State</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="StateID" 
                    ondatabound="DropDownList1_DataBound">
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
                    ondatabound="DropDownList2_DataBound">
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
            <td class="style9">
                Place Pic</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="103px" Width="138px" />
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
                Choose a new pic if reqiured</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Back" onclick="Button2_Click1" />
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
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

