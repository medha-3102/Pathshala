<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pathshala.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 391px;
            text-align: right;
        }
        .auto-style5 {
            width: 391px;
            height: 30px;
            text-align: right;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 391px;
            text-align: right;
            height: 34px;
        }
        .auto-style8 {
            height: 34px;
        }
        .auto-style9 {
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style9">Login Page</span><br />
            </strong>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style7"><strong>UserName</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="307px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please enter Username!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Password</strong></td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="305px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong></strong></td>
                <td>
                    <asp:Button ID="Button_Login" runat="server" Height="35px" OnClick="Button_Login_Click" Text="Login" Width="115px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    </form>
</body>
</html>
