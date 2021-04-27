<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="_2017222041_hasanakpolad.SignUp" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://kit.fontawesome.com/1ad32e192e.js"></script>
    <link href="css/signUp.css" rel="stylesheet" />
    <title>Kayıt Ol</title>
</head>

<body>
    <div class="container">
        <div class="row main">
            <div class="main-login main-center">
                <h5>Bilgileri Eksiksiz Doldurunuz.</h5>
                <form runat="server" class="" method="post" action="#">
                    <div class="form-group">
                        <span class="input-group-addon"><i class="fas fa-female"></i><i class="fas fa-male"></i></span>
                        <label for="">Cinsiyet: </label>
                        <asp:RadioButtonList runat="server" ID="gender">
                            <asp:ListItem Text="Erkek" />
                            <asp:ListItem Text="Kadın" />
                        </asp:RadioButtonList>
                    </div>

                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label">Kullanıcı Adı:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <asp:TextBox runat="server" type="text" class="form-control" name="username" ID="username"
                                    placeholder="Kullanıcı Adı" /><asp:RequiredFieldValidator ControlToValidate="username" ForeColor="Black" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Kullanıcı adı boş olamaz."></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">Şifre:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg"
                                    aria-hidden="true"></i></span>
                                <asp:TextBox runat="server" type="password" class="form-control" name="password" ID="password"
                                    placeholder="Şifre:" /><asp:RequiredFieldValidator ControlToValidate="password" ForeColor="Black" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Şifre boş olamaz."></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="confirm" class="cols-sm-2 control-label">Şifre Tekrar:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg"
                                    aria-hidden="true"></i></span>
                                <asp:TextBox runat="server" type="password" class="form-control" name="confirm" ID="confirm"
                                    placeholder="Şifre Tekrar" /><asp:RequiredFieldValidator ControlToValidate="confirm" ForeColor="Black" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Şifre tekrarı boş olamaz."></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="form-group ">
                        <asp:Button runat="server" ID="btnKyt" class="btn btn-primary btn-lg btn-block login-button" Text="Kaydol" OnClick="btnKyt_Click"></asp:Button>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
