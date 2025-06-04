<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updtstatedtls.aspx.cs" Inherits="updtstatedtls" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 294px;
        }
    .style8
    {
        width: 254px;
        font-weight: bold;
    }
    .style9
    {
        width: 254px;
    }
    .style10
    {
        width: 254px;
        height: 22px;
    }
    .style11
    {
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" align="center" width="100%">
        <tr>
            <td class="style8">
                Update Details</td>
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
            <td class="style8">
                State Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                State Picture</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="156px" Width="128px" />
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
                Choose new image if required</td>
            <td style="margin-left: 120px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" 
                    onclick="Button1_Click1" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Back" onclick="Button2_Click1" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

