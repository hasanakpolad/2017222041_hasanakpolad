<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="_2017222041_hasanakpolad.SignIn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="css/signIn.css" rel="stylesheet" />
    <title>Giriş Ekranı</title>
</head>
<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Giriş Ekranı</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="giris" runat="server">
                            <h3 class="text-center text-info">Giriş Yap</h3>
                            <div class="form-group">
                                <asp:Label runat="server" for="username" class="text-info">Kullanıcı Adı :</asp:Label><br>
                                <asp:TextBox runat="server" name="username" ID="username" class="form-control"></asp:TextBox><asp:RequiredFieldValidator ControlToValidate="username" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullanıcı adı boş olamaz."></asp:RequiredFieldValidator>

                                &nbsp;
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" for="password" class="text-info">Şifre :</asp:Label><br>
                                <asp:TextBox runat="server" TextMode="Password" name="password" ID="password" class="form-control"></asp:TextBox><asp:RequiredFieldValidator ControlToValidate="password" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Şifre boş olamaz."></asp:RequiredFieldValidator>
                                &nbsp;
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info">
                                    <span>Beni Hatırla</span> <span>
                                        <input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <asp:Button runat="server" type="submit" name="submit" class="btn btn-info btn-md" ID="btnSubmit" Text="Gönder" OnClick="btnSubmit_Click"></asp:Button>                            
                                <asp:LinkButton runat="server" href="./SignUp.aspx" class="text-info kayitol" Text="Kayıt Ol"></asp:LinkButton> 
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" DataSourceMode="DataReader" runat="server" ConnectionString="<%$ ConnectionStrings:User %>" SelectCommand="SELECT [UserName], [Password] FROM [Users]"></asp:SqlDataSource>

</body>
</html>
