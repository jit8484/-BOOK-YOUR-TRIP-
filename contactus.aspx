<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        width: 294px;
    }
        .style10
        {
            width: 294px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style11
        {
            width: 294px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            height: 26px;
        }
        .style12
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
    <tr>
        <td class="style9">
            <h1>
            Contact Us</h1>
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
        <td class="style11">
            Name</td>
        <td class="style12">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Phone</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Email-Id</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Sggestions/Querry</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="88px" TextMode="MultiLine" 
                Width="190px"></asp:TextBox>
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
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

