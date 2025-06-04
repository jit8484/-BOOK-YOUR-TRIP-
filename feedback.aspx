<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 322px;
        }
    .style10
    {
        width: 322px;
        font-weight: bold;
    }
    .style11
    {
            width: 322px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
    .style12
    {
        width: 322px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        height: 26px;
            font-size: small;
        }
    .style13
    {
        height: 26px;
    }
    .style14
    {
        width: 322px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        height: 31px;
            font-size: small;
        }
    .style15
    {
        height: 31px;
    }
    .style16
    {
        width: 322px;
        font-weight: bold;
        height: 23px;
    }
    .style17
    {
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style10">
                <h2>
                Feedback</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td class="style11">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Phone</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Emailid</td>
            <td class="style13">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                How you rate our website?</td>
            <td class="style15">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" style="font-size: small">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Very good</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Bad</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                How you rate desining of our websiite?</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    RepeatDirection="Horizontal" style="font-size: small">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Very good</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Bad</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Is&nbsp; information provided on website is enough?</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                    RepeatDirection="Horizontal" style="font-size: small">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Any other comments?</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="93px" TextMode="MultiLine" 
                    Width="205px"></asp:TextBox>
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
                    Text="Send feedback" />
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

