<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="showcity.aspx.cs" Inherits="showcityt" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 243px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" style="width: 100%">
        <tr align="center">
            <td>
                <h1>
                    CITY</h1>
            </td>
        </tr>
        <tr align="center">
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="CityID" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal" Width="681px">
                    <ItemTemplate>
                        <table align="center" class="style9">
                            <tr>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="214px" 
                                        ImageUrl='<%# Eval("Pic", "images/{0}") %>' 
                                        PostBackUrl='<%# Eval("CityID", "showplaces.aspx?gid={0}") %>' 
                                        Width="179px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton11" runat="server" 
                                        PostBackUrl='<%# Eval("CityID", "showplaces.aspx?gid={0}") %>' 
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
                    SelectCommand="SELECT [CityID], [Name], [Pic] FROM [addcity] WHERE ([Stateid] = @Stateid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Stateid" QueryStringField="cid" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

