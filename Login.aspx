<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineLaptopShopFix.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
 </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="login-form row align-items-center">
                <div class="col mx-auto image__left">
                    <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_rycdh53q.json"  background="transparent"  speed="1"  style="width: 480px; height: 480x;"  loop autoplay></lottie-player>
                </div>
                <div class="col form-signin">
                    <section class="tittle__items">
                        <h3 class="">Wellcome to Startup</h3>
                        <p class="">Sign in to your account</p>
                    </section>
                    <section class="manipulation-signin__items">
                        <form class="input__items" action="#" method="POST">
                            <div class="input__items__user">
                                <asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox> 
                               
                            </div>
                            <div class="input__items__pass">
                                <asp:TextBox ID="password" type="password" runat="server" placeholder="Password"></asp:TextBox>
                                
                             
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is require" ControlToValidate="username" style="color:red"></asp:RequiredFieldValidator>
                            <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is require" ControlToValidate="password" style="color:red"></asp:RequiredFieldValidator>
                        </form>
                    </section>
                    <div class="btn__checkbox">
                        <div class="btn__checkbox__items">
                            <input type="checkbox" name="" id="cb1">
                            <label for="cb1">Remember me</label>
                        </div>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <div class="btn__signin">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button2_Click" CssClass="btn" style="  width: 14rem;background-color: #b721ff; color: white;">Sign in</asp:LinkButton>
                        
                    </div>
                    <div class="items__forgot">
                        <a href="#" class="forgot__password">Forgot password?</a>
                    </div>
                    <hr>
                    <div class="link__signup">
                        <h4 class="">New User? <a href="signup.html" class="switch__signup">Create an Account</a></h4>
                    </div>
                </div>
            </div>
        
        <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
</asp:Content>
