<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updtstate.aspx.cs" Inherits="updtstate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 291px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style5">
                <h2>
                    Update State</h2>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <h2>
                </h2>
            </td>
        </tr>
        <tr>
            <td class="style5" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="StateID" DataSourceID="SqlDataSource1" Height="118px" 
                    Width="464px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Picture" 
                            DataImageUrlFormatString="images/{0}" HeaderText="State Pic">
                            <ControlStyle Height="120px" Width="120px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="stateid" 
                            DataNavigateUrlFormatString="updtstatedtls.aspx?sid={0}" 
                            HeaderText="Click to Update" Text="Update" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT * FROM [addstates]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

