<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="OnlineLaptopShopFix.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
      <ItemTemplate>
          <div style="display:flex;border:1px solid black">
              <div style="border:1px solid black">
                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl")%>' />
               </div>
              <div style="width:830px">
                  <p style="text-align:center">
                      Thông tin sản phẩm
                  </p>
                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>' style="display:none"></asp:Label>
                  <p style="margin-left:20px">
                      <%# Eval("NameLaptop") %>
                  </p>
                   <p style="margin-left:20px">
                      <%# Eval("Display") %>
                  </p>
                   <p style="margin-left:20px">
                      <%# Eval("CPU") %>
                  </p>
                   <p style="margin-left:20px">
                      <%# Eval("RAM") %>
                  </p>
                   <p style="margin-left:20px">
                      <%# Eval("SSD") %>
                  </p>
                   <p style="margin-left:20px">
                      <%# Eval("Card") %>
                  </p>
              </div>
           </div>
          <div style="border:1px solid black;width:100%">
              <span style="margin-left:50px">Mô tả sản phẩm</span>
              <p>
                  
              </p>
          </div>
      </ItemTemplate>
    </asp:DataList>
    <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" Text="Mua Hàng" style="background-color:cornflowerblue;padding: 5px 20px 5px 20px;color:white" />
        <asp:Button ID="Button2" runat="server" Text="Cho vào giỏ" style="background-color:cornflowerblue;padding: 5px 20px 5px 20px;color:white" OnClick="Button2_Click"/>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
</asp:Content>
