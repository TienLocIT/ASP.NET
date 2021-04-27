<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineLaptopShopFix.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       <asp:Image ID="Image1" runat="server" ImageUrl="Images/637528312299597503_F-C1_1200x300.jfif" Width="1340px"/>
   </div>
    <div id="FlashSale" style="background-color:cornflowerblue;height:230px;margin-top:-4px;position:relative">
        <div style="position:absolute;margin-top:27px;margin-left:100px;color:white">
            <i class="far fa-flushed" style="color:white"></i>Flash Sell
        </div>
        <div style="background-color: white;margin-left:6%; width: 90%; height: 160px; margin-top: 4%;border-radius:40px;display:flex;position:absolute">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="9" >
                <ItemTemplate>
                    <table style="margin-left:34px">
                        <tr>
                            <td>
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Detail.aspx?id="+Eval("Id") %>'>
                                <asp:Image ID="Image2" runat="server" style="height:100px" ImageUrl='<%# Eval("ImageUrl") %>' />
                                    </asp:HyperLink>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("NameLaptop") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <div style="color:white;background-color:cornflowerblue;margin-top:1%;width:10%;text-align:center">
    <asp:Label ID="Label1" runat="server" Text='Asus'></asp:Label>
     </div>
    <div style="border:1px solid black;border-radius:25px;height:230px;display:flex">
         <div>
            <asp:DataList ID="DataList2" runat="server" RepeatColumns="7"  >
                <ItemTemplate>
                    <table style="margin-left:34px">
                        <tr style="border-right:1px solid black">
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Detail.aspx?id="+Eval("Id") %>'>
                                <asp:Image ID="ImageButton4" CommandName="myevent"  runat="server" style="height:162px" ImageUrl='<%# Eval("ImageUrl") %>'/>
                                    </asp:HyperLink>
                                 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("NameLaptop") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <div style="border-top:1px solid black;border-bottom:1px solid black;height:240px;position:relative">
        <div style="position:absolute">
            Các hãng khác
        </div>
        <div style="display:flex;margin-top:30px">
            <div style="border:1px solid black;margin-left:10%">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="Images/lenovo.png" style="height:180px"  />
            </div>
            <div style="border:1px solid black;margin-left:10%">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/HP.jfif" style="height:180px" />
            </div>
           <div style="border:1px solid black;margin-left:10%">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="Images/acer.png" style="height:180px"/>
            </div>
           
           
        </div>
    </div>
</asp:Content>
