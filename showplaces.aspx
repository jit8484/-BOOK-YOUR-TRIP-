<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="showplaces.aspx.cs" Inherits="showplaces" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr align="center">
            <td>
                <h1>
                    PLACES</h1>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="PlaceID" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal" Width="734px">
                    <ItemTemplate>
                        <table align="center" class="style9">
                            <tr>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="245px" 
                                        ImageUrl='<%# Eval("Picture", "images/{0}") %>' 
                                        PostBackUrl='<%# Eval("PlaceID", "placedtls.aspx?pid={0}") %>' Width="188px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton11" runat="server" 
                                        PostBackUrl='<%# Eval("PlaceID", "placedtls.aspx?pid={0}") %>' 
                                        Text='<%# Eval("Name") %>' Font-Bold="True" Font-Names="Tahoma" 
                                        Font-Size="Small" Font-Underline="False" ForeColor="Black"></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [PlaceID], [Name], [Picture] FROM [addplaces] WHERE ([CityID] = @CityID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CityID" QueryStringField="gid" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

