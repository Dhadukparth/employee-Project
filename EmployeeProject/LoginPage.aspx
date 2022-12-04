<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="EmployeeProject.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/StyleSheet1.css" rel="stylesheet" />
    <title>Employee Project</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-login">
            <div class="d-flex justify-content-center mb-4">
                <img class="login-img" src="Image/logo.png" height="60" width="230" />
            </div>
            <hr />
            <div>
                <div class="p-2">
                    <label class="pb-2 fw-bold">Enter Username</label><br />
                    <asp:TextBox ID="txtusername" runat="server" CssClass="login-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requser" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtusername" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="p-2">
                    <label class="pb-2 fw-bold">Enter Password</label><br />
                    <asp:TextBox ID="txtpassword" runat="server" CssClass="login-text" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqpass" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtpassword" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div>
                    <div class="m-2 mt-4 d-flex justify-content-between">
                        <asp:Button ID="btnreset" runat="server" CssClass="btn btn-secondary lgn-btn" Text="Reset" OnClick="btnreset_Click" />
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary lgn-btn" Text="Login" OnClick="btnLogin_Click" ValidationGroup="g1" />
                    </div>
                    <div class="m-2 mt-3 d-flex justify-content-between">
                        <asp:LinkButton ID="lnkSingUp" runat="server" Text="SingUp" PostBackUrl="~/SingUpPage.aspx"></asp:LinkButton>
                        <asp:LinkButton ID="lnkForgot" runat="server" Text="Forgot Password" PostBackUrl="~/ForgotPasswordPage.aspx"></asp:LinkButton>
                    </div>
                </div>
            </div>
            <asp:Label ID="lblerror" runat="server" Visible="false" Text="Error" ForeColor="Red" Font-Size="Medium">
            </asp:Label>
        </div>
    </form>
</body>
</html>
