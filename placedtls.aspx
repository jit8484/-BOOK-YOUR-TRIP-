<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="placedtls.aspx.cs" Inherits="placedtls" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" align="center"><tr><td></td></tr><tr><td>
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td></tr><tr><td align="center">
                                        <asp:Image ID="Image2" runat="server" 
                Height="189px" Width="256px" />
                                    </td></tr><tr><td><b>Description:</b></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" style="text-align: justify"></asp:Label>
            </td></tr></table>
</asp:Content>

