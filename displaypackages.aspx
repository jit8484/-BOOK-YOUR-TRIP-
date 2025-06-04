<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="displaypackages.aspx.cs" Inherits="displaypackages" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 337px;
        }
        .style10
        {
            width: 464px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td>
                <h2>
                    <b>Packages</b></h2>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="PackageID" 
                    DataSourceID="SqlDataSource1" RepeatColumns="2" 
                    RepeatDirection="Horizontal" Width="680px">
                    <ItemTemplate>
                        <table align="center" class="style9">
                            <tr>
                                <td align="center" class="style10">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="216px" 
                                        ImageUrl='<%# Eval("Pic", "images/{0}") %>' 
                                        PostBackUrl='<%# Eval("PackageID", "packagedtls.aspx?packid={0}") %>' 
                                        Width="279px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="style10">
                                    <asp:LinkButton ID="LinkButton11" runat="server" 
                                        PostBackUrl='<%# Eval("PackageID", "packagedtls.aspx?packid={0}") %>' 
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
                    SelectCommand="SELECT [Name], [About], [Packageincludes], [Packageexcludes], [Noofdays], [Price], [Pic], [Iternary], [PackageID] FROM [Packages]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

