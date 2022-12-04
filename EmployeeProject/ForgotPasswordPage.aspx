<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPasswordPage.aspx.cs" Inherits="EmployeeProject.ForgotPasswordPage" %>

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
        <div class="frg-pwd">
            <div class="d-flex justify-content-center">
                <h4><b>Forgot Password</b></h4>
            </div>
            <hr />
            <div class="p-2">
                <label class="pb-2 fw-bold">Enter Email</label><br />
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="login-text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtemail">
                </asp:RequiredFieldValidator>
            </div>
            <div class="m-2 mt-4 d-flex justify-content-between">
                <asp:Button ID="btnsend" runat="server" CssClass="btn btn-primary lgn-btn" Text="Send" />
            </div>
            <asp:Label ID="lblerror" runat="server" Visible="false" Text="Error" ForeColor="Red" Font-Size="Medium">
            </asp:Label>
        </div>
    </form>
</body>
</html>
