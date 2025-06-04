<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="packagedata.aspx.cs" Inherits="packagedata" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 279px;
        }
        .style11
        {
            width: 279px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style9">
                <h1>
                    For Booking</h1>
            </td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Package Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Price</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Number of Persons</td>
            <td>
                Adults<asp:TextBox ID="TextBox3" runat="server" Width="74px">1</asp:TextBox>
&nbsp;&nbsp; Child<asp:TextBox ID="TextBox4" runat="server" Width="81px">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Date of Arrival</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="246px"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox8">
                </cc1:CalendarExtender>
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
                <h2>
                    DETAILS:</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Address</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Height="44px" Width="267px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Contact No.</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="250px"></asp:TextBox>
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
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
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
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

