<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 367px;
        }
        .style9

        {
            width: 143px;
            font-weight: bold;
        }
        .style10
        {
            width: 143px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4" align="center" width="100%">
        <tr>
            <td class="style9">
                <h2>
                LOGIN</h2>
            </td>
            <td>
                <h2>
                </h2>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                Username</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>

            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
     <br />
      <br />
       <br />
        <br />
         <br />
          <br />
           <br />
            <br />
             <br />
             <br /> <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
           
</asp:Content>



