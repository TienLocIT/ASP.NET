<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="OnlineLaptopShopFix.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="fa/css/all.css">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="1.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col">Product</th>
                    <th scope="col">Number</th>
                    <th scope="col">Price</th>
                    <th scope="col">Add/delete</th>
                </tr>
            </thead>
            <tbody>
                <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                <tr>
                    <th scope="row"><input type="checkbox" name="" id=""></th>
                    <td>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src='<%# Eval("ImageUrl") %>' alt="" srcset="" style="height:100px" class="product-img img-fluid">
                                </div>
                                <div class="col-md-6 mt-4">
                                    <%# Eval("NameLaptop") %>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="mt-3 btn-group" style="margin-left:-33px">
                            <button type="button" class="btn btn-light">-</button>
                            <span class="input-group-text">1.00</span>
                            <button type="button" class="btn btn-light">+</button>
                        </div>
                    </td>
                    <td> 
                        <div class="input-group-prepend mt-3" style="margin-left:120px">
                        <span class="input-group-text">$</span>
                        <span class="input-group-text"><%# Eval("Price") %></span>
                        </div>
                    </td>
                    <td>
                        <div class="btn-group btn-group-toggle mt-3" data-toggle="buttons" style="margin-left:100px">
                            <button type="button" class="btn btn-outline-warning">Delete</button>
                        </div>
                    </td>
                </tr>
                    </ItemTemplate>
                </asp:Datalist>
            </tbody>
            
                        <asp:Button ID="Button1" class="btn btn-info" style="width: 20%;margin-left:40%" runat="server" Text="Mua hàng" /></td>
          </table>
    </div>
    <script src="1.js"></script>   
    <script src="vendor/jquery/jquery.min.js"></script>
</asp:Content>
