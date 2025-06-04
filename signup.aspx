<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 337px;
    }
    .style6
    {
        width: 275px;
    }
    .style10
    {
        width: 325px;
        height: 20px;
    }
    .style11
    {
        height: 20px;
    }
    .style12
    {
        width: 513px;
        font-weight: bold;
    }
        .style14
        {
        width: 513px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
    }
        .style15
        {
            height: 22px;
            width: 314px;
        }
        .style16
        {
            height: 20px;
            width: 314px;
        }
        .style17
        {
            width: 513px;
            height: 22px;
        }
        .style18
        {
        width: 513px;
    }
        .style19
        {
            width: 325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td class="style12">
            <h2>
                Sign up</h2>
        </td>
        <td class="style15">
            &nbsp;</td>
        <td class="style19">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
        </td>
        <td class="style16">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
        </td>
    </tr>
    <tr>
        <td class="style14">
            Name</td>
        <td class="style15">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
        </td>
        <td align="center" rowspan="14">
            <br />
            <asp:Image ID="Image2" runat="server" Height="258px" 
                ImageUrl="~/pics/sign up.jpg" Width="215px" />
        </td>
    </tr>
    <tr>
        <td class="style14">
            Address</td>
        <td class="style15">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            State</td>
        <td class="style15">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            City</td>
        <td class="style15">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Mobile
        </td>
        <td class="style15">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Email id(Username)</td>
        <td class="style15">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:LinkButton ID="LinkButton9" runat="server" CausesValidation="False" 
                onclick="LinkButton9_Click">Check Availability</asp:LinkButton>
        </td>
        <td class="style19">
            <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td>
    </tr>
    <tr>
        <td class="style14">
            Password</td>
        <td class="style15">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Confirm Password</td>
        <td class="style15">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Gender</td>
        <td class="style15">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
        </td>
        <td class="style19">
                                    </td>
    </tr>
    <tr>
        <td class="style14">
            Country</td>
        <td class="style15">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>Italy</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Date of Birth</td>
        <td class="style15">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Profile&nbsp; Pic&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="style15">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td class="style15">
            <asp:Button ID="Button1" runat="server" Text="Sign Up" 
                onclick="Button1_Click1" />
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td class="style15">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style19">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

