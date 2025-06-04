<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="listofmembers.aspx.cs" Inherits="listofmembers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                GridLines="Vertical" Height="253px" Width="704px">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                        SortExpression="Mobile" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                        SortExpression="Username" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" 
                        SortExpression="DOB" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:CommandField HeaderText="Click here for Delete" ShowDeleteButton="True" 
                        ButtonType="Image" DeleteImageUrl="~/pics/delete-2.png" />
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
                
                
                SelectCommand="SELECT [Name], [Address], [Mobile], [Username], [DOB], [Gender] FROM [signup]" 
                ConflictDetection="CompareAllValues" 
                DeleteCommand="DELETE FROM [signup] WHERE [Username] = @original_Username" 
                InsertCommand="INSERT INTO [signup] ([Name], [Address], [Mobile], [Username], [DOB], [Gender]) VALUES (@Name, @Address, @Mobile, @Username, @DOB, @Gender)" 
                OldValuesParameterFormatString="original_{0}" 
                
                UpdateCommand="UPDATE [signup] SET [Name] = @Name, [Address] = @Address, [Mobile] = @Mobile, [DOB] = @DOB, [Gender] = @Gender WHERE [Username] = @original_Username AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Username" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Decimal" />
                    <asp:Parameter Name="DOB" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Mobile" Type="Decimal" />
                    <asp:Parameter Name="original_DOB" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Decimal" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="DOB" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

