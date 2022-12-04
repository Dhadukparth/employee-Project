<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingUpPage.aspx.cs" Inherits="EmployeeProject.SingUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Project</title>
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="con-singup">
            <div class="d-flex justify-content-center">
                <h3><b>Sing Up</b></h3>
            </div>
            <hr />
            <div class="row row-cols-2">
                <div class="col">
                    <label class="form-lable">Enter Name</label><br />
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqnm" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtname" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Address</label><br />
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqadd" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtaddress" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Country</label><br />
                    <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" DataSourceID="GetCountryData" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" CssClass="form-text" DataTextField="Name" DataValueField="Id">
                        <asp:ListItem>Select Country</asp:ListItem>
                    </asp:DropDownList> 
                    <asp:SqlDataSource ID="GetCountryData" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeDbGetCountryDataConnectionString %>" SelectCommand="SELECT * FROM [CountryTbl]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="reqcountry" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="ddlCountry" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>   
                </div>
                <div class="col">
                    <label class="form-lable">Enter State</label><br />
                    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" CssClass="form-text"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqstate" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="ddlState" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter City</label><br />
                    <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true" CssClass="form-text"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqcity" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="ddlCity" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Date Of Birth</label><br />
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqdob" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtDOB" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Date Of Joining</label><br />
                    <asp:TextBox ID="txtDOJ" runat="server" TextMode="Date" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqdoj" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtDOJ" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Mobile No</label><br />
                    <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqmob" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtMobile" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Whatsapp No</label><br />
                    <asp:TextBox ID="txtwhno" runat="server" TextMode="Number" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqwhno" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtwhno" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Email</label><br />
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqemail" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtEmail" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Password</label><br />
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqpass" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtPwd" ValidationGroup="g1">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    <label class="form-lable">Enter Confirm Password</label><br />
                    <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password" CssClass="form-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqcpwd" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtCPwd" ValidationGroup="g1">
                    </asp:RequiredFieldValidator><br />
                    <asp:CompareValidator ID="cmpvpass" runat="server" ErrorMessage="Both Password are not Match" ForeColor="Red" Font-Size="10" ControlToCompare="txtcPwd" ControlToValidate="txtPwd" ValidationGroup="g1">
                    </asp:CompareValidator>
                </div>
                <div class="col">
                    <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" PostBackUrl="~/LoginPage.aspx" CssClass="btn btn-secondary w-50 form-btn"></asp:LinkButton>
                </div>
                <div class="col">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary w-50 form-btn" OnClick="btnSave_Click" ValidationGroup="g1" />
                </div>
            </div>
        </div>

        <script>
            $(function () {
                //Initialize Select2 Elements
                $(".select2").select2();
            });
        </script>
    </form>
</body>
</html>
