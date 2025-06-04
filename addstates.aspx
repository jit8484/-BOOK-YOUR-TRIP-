<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addstates.aspx.cs" Inherits="addsates" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 310px;
        }
        .style10
        {
            width: 310px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
            width: 411px;
        }
        .style12
        {
            width: 310px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style13
        {
            width: 411px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style10">
                <h2>
                Add States</h2>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                State Name</td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                State Picture</td>
            <td class="style13">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="Button1" runat="server" Text="Add States" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

