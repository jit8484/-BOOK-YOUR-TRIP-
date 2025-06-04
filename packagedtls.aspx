<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="packagedtls.aspx.cs" Inherits="packagedtls" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        
        .style9
        {
            width: 202px;
        }
        .style12
        {
            width: 214px;
        }
        .style13
        {
            width: 142px;
        }
        .style14
        {
            font-size: small;
            text-align: justify;
        }
        .style15
        {
            width: 142px;
            font-size: small;
            font-weight: bold;
        }
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table width="100%" align="center"><tr><td></td></tr><tr><td>
                                        <h2>
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                        </h2>
                                    </td></tr><tr><td>
            <table align="center" class="style1">
                <tr>
                    <td class="style12" rowspan="7" valign="top">
                                        <asp:Image ID="Image2" runat="server" Height="222px" 
                            Width="192px" />
                                    </td>
                    <td class="style15">
                                    About</td>
                    <td class="style14">
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                    </td>
                </tr>
                <tr>
                    <td class="style15">
                                        Package Inclusions</td>
                    <td class="style14">
                <asp:Label ID="Label4" runat="server"></asp:Label>
                                </td>
                </tr>
                <tr>
                    <td class="style15">
                Package Exclusions</td>
                    <td class="style14">
                <asp:Label ID="Label5" runat="server"></asp:Label>
                                </td>
                </tr>
                <tr>
                    <td class="style15">
                Number of Days</td>
                    <td class="style14">
                <asp:Label ID="Label6" runat="server"></asp:Label>
                                </td>
                </tr>
                <tr>
                    <td class="style15">
                                    Price</td>
                                                                        <td class="style14">
                                                                            Rs.
                <asp:Label ID="Label7" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style13">
                                                                            &nbsp;</td>
                                                                        <td>
                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Request Booking" 
                                        Width="161px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style13">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
            </td></tr><tr><td>I<b style="font-size: small">ternary</b></td></tr><tr>
        <td style="text-align: justify">
                <asp:Label ID="Label8" runat="server" style="font-size: small"></asp:Label>
            </td></tr><tr><td>
            <table align="center" class="style4" width="100%">
                <tr>
                    <td class="style9">
                                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </td></tr></table>
</asp:Content>

