<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
        Please Login to Access the page. Click
        <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">Here</asp:LinkButton>
&nbsp;to login.</td>
        </tr>
    </table>
</asp:Content>

