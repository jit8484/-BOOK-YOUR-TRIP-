<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td>
                <b>View Feedback</b></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    Height="300px" 
                    Width="827px" ForeColor="#333333">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Ratewebsite" HeaderText="Ratewebsite" 
                            SortExpression="Ratewebsite" />
                        <asp:BoundField DataField="Ratedesign" HeaderText="Ratedesign" 
                            SortExpression="Ratedesign" />
                        <asp:BoundField DataField="Infoenough" HeaderText="Infoenough" 
                            SortExpression="Infoenough" />
                        <asp:BoundField DataField="Comments" HeaderText="Comments" 
                            SortExpression="Comments" />
                        <asp:BoundField DataField="Feedbackdate" HeaderText="Feedbackdate" 
                            SortExpression="Feedbackdate" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/pics/delete-2.png" 
                            HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT * FROM [feedbacktable]" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [feedbacktable] WHERE [FeedbackID] = @original_FeedbackID" 
                    InsertCommand="INSERT INTO [feedbacktable] ([Name], [Phone], [Email], [Ratewebsite], [Ratedesign], [Infoenough], [Comments], [Feedbackdate]) VALUES (@Name, @Phone, @Email, @Ratewebsite, @Ratedesign, @Infoenough, @Comments, @Feedbackdate)" 
                    OldValuesParameterFormatString="original_{0}" 
                    
                    UpdateCommand="UPDATE [feedbacktable] SET [Name] = @Name, [Phone] = @Phone, [Email] = @Email, [Ratewebsite] = @Ratewebsite, [Ratedesign] = @Ratedesign, [Infoenough] = @Infoenough, [Comments] = @Comments, [Feedbackdate] = @Feedbackdate WHERE [FeedbackID] = @original_FeedbackID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Ratewebsite] = @original_Ratewebsite) OR ([Ratewebsite] IS NULL AND @original_Ratewebsite IS NULL)) AND (([Ratedesign] = @original_Ratedesign) OR ([Ratedesign] IS NULL AND @original_Ratedesign IS NULL)) AND (([Infoenough] = @original_Infoenough) OR ([Infoenough] IS NULL AND @original_Infoenough IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL)) AND (([Feedbackdate] = @original_Feedbackdate) OR ([Feedbackdate] IS NULL AND @original_Feedbackdate IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_FeedbackID" Type="Decimal" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Ratewebsite" Type="String" />
                        <asp:Parameter Name="Ratedesign" Type="String" />
                        <asp:Parameter Name="Infoenough" Type="String" />
                        <asp:Parameter Name="Comments" Type="String" />
                        <asp:Parameter DbType="Date" Name="Feedbackdate" />
                        <asp:Parameter Name="original_FeedbackID" Type="Decimal" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="Decimal" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Ratewebsite" Type="String" />
                        <asp:Parameter Name="original_Ratedesign" Type="String" />
                        <asp:Parameter Name="original_Infoenough" Type="String" />
                        <asp:Parameter Name="original_Comments" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Feedbackdate" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Ratewebsite" Type="String" />
                        <asp:Parameter Name="Ratedesign" Type="String" />
                        <asp:Parameter Name="Infoenough" Type="String" />
                        <asp:Parameter Name="Comments" Type="String" />
                        <asp:Parameter DbType="Date" Name="Feedbackdate" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

