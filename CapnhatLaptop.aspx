<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CapnhatLaptop.aspx.cs" Inherits="OnlineLaptopShopFix.CapnhatLaptop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Cập nhật Laptop</h1>
        <asp:Label runat="server">NameLaptop</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="131px"></asp:TextBox>
        <br />
        <asp:Label runat="server">NameShop</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 1px" Width="133px"></asp:TextBox>
        <br />
        <asp:Label runat="server">Display</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 7px" Width="132px"></asp:TextBox>
        <br />
        <asp:Label runat="server">CPU</asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 7px" Width="132px"></asp:TextBox>
         <br />
    <asp:Label runat="server">RAM</asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 7px" Width="132px"></asp:TextBox>
    <br />
    <asp:Label runat="server">SSD</asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 7px" Width="132px"></asp:TextBox>
    <br />
    <asp:Label runat="server">CARD</asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 7px" Width="132px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Lưu dữ liệu" OnClick="Update"  />
        <a href="ManageAdmin.aspx">Quay lại danh sách</a>
</asp:Content>
