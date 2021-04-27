<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Capnhattaikhoan.aspx.cs" Inherits="OnlineLaptopShopFix.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Cập nhật tài khoản</h1>
        <asp:Label runat="server">Username</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="131px"></asp:TextBox>
        <br />
        <asp:Label runat="server">Password</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 1px" Width="133px"></asp:TextBox>
        <br />
        <asp:Label runat="server">Email</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 7px" Width="132px"></asp:TextBox>
        <br />
        <asp:Label runat="server">Phone</asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 7px" Width="132px"></asp:TextBox>
         <br />
        <asp:Button ID="Button1" runat="server" Text="Lưu dữ liệu" OnClick="Update"  />
        <a href="ManageAdmin.aspx">Quay lại danh sách</a>
   
</asp:Content>
