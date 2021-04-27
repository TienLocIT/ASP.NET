<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Themmoinguoidung.aspx.cs" Inherits="OnlineLaptopShopFix.Themmoinguoidung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1>Thêm mới người dùng</h1>
        <asp:Label runat="server">Username</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
          <asp:Label runat="server">Password</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 3px" type="password"></asp:TextBox>
        <br />
          <asp:Label runat="server">Phone</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 5px"></asp:TextBox>
        <br />
        <asp:Label runat="server">Email</asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 5px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Lưu dữ liệu" OnClick="btn_add" />
</asp:Content>
