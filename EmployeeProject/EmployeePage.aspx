<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="EmployeeProject.EmployeePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Employee Detail</h1>
        <asp:Panel ID="emppnl" runat="server" Visible="true" Enabled="true">
            <asp:GridView ID="gvemp" runat="server" 
                AutoGenerateColumns="False" OnRowCommand="gvemp_RowCommand" 
                CellPadding="4" ForeColor="#333333" GridLines="None"
                CssClass="w-100">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" Visible="false"/>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Country" HeaderText="Country" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" />
                    <asp:BoundField DataField="DateOfJoin" HeaderText="Date Of Join" />
                    <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
                    <asp:BoundField DataField="WhatsappNo" HeaderText="Whatsapp No" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="EmpType" HeaderText="Employee Type" />
                    <asp:ButtonField HeaderText="Edit" Text="Edit" ControlStyle-ForeColor="Blue">
                        <ControlStyle ForeColor="Blue"></ControlStyle>
                    </asp:ButtonField>
                    <asp:ButtonField HeaderText="Delete" Text="Delete" ControlStyle-ForeColor="Blue">
                        <ControlStyle ForeColor="Blue"></ControlStyle>
                    </asp:ButtonField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </asp:Panel>
</asp:Content>
