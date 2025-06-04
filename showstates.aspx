<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="showstates.aspx.cs" Inherits="showstates" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            width: 190px;
        }
        .style10
        {
            font-size: large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
    <table class="style4" align="center" width="100%">
        <tr><td class="style10">STATES</td></tr>
        <tr><td align="center">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="StateID" 
                                DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" 
                                style="margin-right: 20px" CellPadding="0" 
                                onselectedindexchanged="DataList1_SelectedIndexChanged" 
                                Font-Underline="False" Width="642px">
                                <ItemTemplate>
                                    <table align="center" class="style9">
                                        <tr>
                                            <td align="center">
                                                <asp:ImageButton ID="ImageButton1" runat="server" Height="231px" 
                                                    ImageUrl='<%# Eval("Picture", "images/{0}") %>' 
                                                    PostBackUrl='<%# Eval("StateID", "showcity.aspx?cid={0}") %>' 
                                                    Width="158px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:LinkButton ID="LinkButton11" runat="server" 
                                                    PostBackUrl='<%# Eval("StateID", "showcity.aspx?cid={0}") %>' 
                                                    Text='<%# Eval("Name") %>' Font-Bold="True" Font-Names="Tahoma" 
                                                    Font-Size="Small" Font-Underline="False" ForeColor="Black"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                                SelectCommand="SELECT * FROM [addstates]"></asp:SqlDataSource>
                        </td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
    </table>
</asp:Content>

