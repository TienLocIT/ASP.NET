<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineLaptopShopFix.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="login-form row align-items-center">
                <div class="col form-signin">
                    <section class="tittle__items">
                        <h3 class="">Sign Up</h3>
                    </section>
                    <section class="manipulation-signup__items">
                        <form class="input__items" action="#" method="POST">
                            <div class="input__items__user">
                                <asp:TextBox ID="username" placeholder="Username" runat="server"></asp:TextBox>  
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is require" ControlToValidate="username" style="color:red"></asp:RequiredFieldValidator>
                            <div class="input__items__pass">
                                <asp:TextBox ID="password" placeholder="Password" runat="server" type="password"></asp:TextBox>  
                            </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password is require" ControlToValidate="password" style="color:red"></asp:RequiredFieldValidator>
                            <div class="input__items__re-pass">
                                <asp:TextBox ID="repass" placeholder="Re-Password" runat="server" type="password"></asp:TextBox>   
                            </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Re-pass is require" ControlToValidate="repass" style="color:red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="pass is not repass" ControlToValidate="repass" ControlToCompare="password" style="color:red"></asp:CompareValidator>
                            <div class="input__items__email">
                                <asp:TextBox ID="email" placeholder="Email" runat="server" type="email"></asp:TextBox>
                            </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is require" ControlToValidate="email" style="color:red"></asp:RequiredFieldValidator>
                            <div class="input__items__re-pass">
                                <asp:TextBox ID="phone" placeholder="Phone" runat="server" type="tel" pattern="[0-9]{4}-[0-9]{3}-[0-9]{3}" ></asp:TextBox>
                            </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone is require" ControlToValidate="phone" style="color:red"></asp:RequiredFieldValidator>
                        </form>
                    </section>
                    <div class="btn__signup">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button1_Click" class="btn" style="  width: 14rem;
            background-color: #b721ff;
            color: white;">Sign Up</asp:LinkButton>
                    </div>
                    <hr>
                    <div class="link__signup">
                        <h4 class="">Welcome to my website! </h4>
                    </div>
                </div>
                <div class="col mx-auto image__left">
                    <lottie-player src="https://assets6.lottiefiles.com/packages/lf20_e9of4o97.json"  background="transparent"  speed="1"  style="width: 480px; height: 480x;"  loop autoplay></lottie-player>
                </div>
            </div>
        
        <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    
    </div>


    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
</asp:Content>
