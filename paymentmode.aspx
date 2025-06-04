<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="paymentmode.aspx.cs" Inherits="paymentmode" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .style20
        {
            font-family: Arial, Helvetica, sans-serif;
            height: 22px;
            font-size: small;
        }
        .style23
        {
            font-family: Arial, Helvetica, sans-serif;
            height: 22px;
            font-weight: bold;
            font-size: small;
        width: 148px;
    }
        .style25
        {
        font-family: Arial, Helvetica, sans-serif;
        font-weight: bold;
        font-size: small;
        width: 148px;
    }
        .style26
        {
            font-family: Arial, Helvetica, sans-serif;
            font-style: italic;
            font-size: small;
        }
    .style28
    {
    }
    .style27
    {
        height: 22px;
        font-weight: bold;
    }
    .style29
    {
        width: 148px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style26">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style27">
                Thanks for you booking request. We will revert back to you shortly after 
                reviewing.</td>
        </tr>
        </table>
            </td>
        </tr>
        <tr>
            <td class="style25">
                Your Booking ID.is&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style26">
                <asp:Label ID="Label2" runat="server" Font-Italic="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style25">
                Your Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </td>
            <td class="style10">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style25">
                Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style10">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style23">
                Contact No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;                 
            </td>
            <td class="style20">
                <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

