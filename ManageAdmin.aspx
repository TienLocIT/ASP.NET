<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageAdmin.aspx.cs" Inherits="OnlineLaptopShopFix.ManageAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Themmoinguoidung.aspx">Thêm mới người dùng</asp:HyperLink>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:TemplateField HeaderText="Chức năng">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="update">Cập nhật</asp:LinkButton>
                    -
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="delete">Xóa</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/themMoiLapTop.aspx">Thêm mới Laptop</asp:HyperLink>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="NameLaptop" HeaderText="NameLaptop" SortExpression="NameLaptop" />
            <asp:BoundField DataField="NameShop" HeaderText="NameShop" SortExpression="NameShop" />
            <asp:BoundField DataField="Display" HeaderText="Display" SortExpression="Display" />
            <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
            <asp:BoundField DataField="RAM" HeaderText="RAM" SortExpression="RAM" />
            <asp:BoundField DataField="SSD" HeaderText="SSD" SortExpression="SSD" />
            <asp:BoundField DataField="CARD" HeaderText="CARD" SortExpression="CARD" />
            <asp:TemplateField HeaderText="Chức năng">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="update1">Cập nhật</asp:LinkButton>
                    -
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="delete1">Xóa</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [NameLaptop], [NameShop], [Display], [CPU], [RAM], [SSD], [CARD] FROM [Laptop]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
</asp:Content>
