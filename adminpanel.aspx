<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 119px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style8">
                Admin Pannel</td>
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
            <td class="style8">
                <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">Add 
                States</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton12" runat="server" onclick="LinkButton12_Click">Add 
                city</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:LinkButton ID="LinkButton13" runat="server" onclick="LinkButton13_Click">Add 
                Category</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton14" runat="server" onclick="LinkButton14_Click">Add 
                Places</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

