<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="packages.aspx.cs" Inherits="packages" Title="Untitled Page"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 293px;
        }
        .style10
        {
            width: 293px;
            height: 16px;
        }
        .style11
        {
            height: 16px;
        }
        .style12
        {
            width: 293px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .style13
        {
            width: 293px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            height: 6px;
            font-size: small;
        }
        .style14
        {
            height: 6px;
        }
        .style15
        {
            width: 293px;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style9">
                <h2>
                PACKAGES</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style12">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                About Package</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="57px" TextMode="MultiLine" 
                    Width="292px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Package Includes</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="296px" 
                    Height="53px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Package Excludes</td>
            <td class="style14">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="304px" 
                    Height="43px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Number of days</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                Price</td>
                                    <td>
                                        Rs
                                        <asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="300px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        Picture</td>
            <td style="margin-left: 40px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style12">
                Iternary</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox7" runat="server" Height="52px" TextMode="MultiLine" 
                    Width="310px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" 
                    style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

