<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            height: 21px;
        }
        .style12
        {
            width: 239px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style11">
                <h2>
                    RANDOM PLACES</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="PlaceID" 
                        DataSourceID="SqlDataSource1" RepeatColumns="2" 
                        RepeatDirection="Horizontal" 
                        onselectedindexchanged="DataList1_SelectedIndexChanged" Width="650px">
                        <ItemTemplate>
                            <table align="center" class="style12">
                                <tr>
                                    <td align="center">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="237px" 
                                            ImageUrl='<%# Eval("Picture", "images/{0}") %>' 
                                            PostBackUrl='<%# Eval("PlaceID", "placedtls.aspx?pid={0}") %>' Width="197px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:LinkButton ID="LinkButton11" runat="server" 
                                            PostBackUrl='<%# Eval("PlaceID", "placedtls.aspx={0}") %>' 
                                            Text='<%# Eval("Name") %>' Font-Bold="True" Font-Names="Tahoma" 
                                            Font-Size="Small" Font-Strikeout="False" Font-Underline="False" 
                                            ForeColor="Black"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    </td>
        </tr>
        <tr>
            <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                        SelectCommand="SELECT top 4 [PlaceID], [Name], [Picture] FROM [addplaces]order by newid()">
                    </asp:SqlDataSource>
                </td>
        </tr>
    </table>
</asp:Content>

