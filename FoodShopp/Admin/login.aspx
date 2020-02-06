﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FoodShopp.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                        </div>

                                        <div class="form-group ">
                                            <%--<input type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address...">--%>
                                            <asp:TextBox ID="txt_tendangnhap" CssClass="form-control form-control-user" placeholder=" Tên đăng nhập" runat="server">
                                                 
                                            </asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfv_tendangnhap" runat="server" ErrorMessage="Tên đăng nhập không được để trống!" ControlToValidate="txt_tendangnhap" ForeColor="Red" ></asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group">
                                            <%--<input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">--%>
                                            <asp:TextBox ID="txt_password" type="password" CssClass="form-control form-control-user" placeholder="Password" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="rfv_password" runat="server" ErrorMessage="Tên đăng nhập không được để trống!" ControlToValidate="txt_password" ForeColor="Red" ></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                           
                                                <%--<input type="checkbox" class="custom-control-input" id="customCheck">--%>
                                                <asp:CheckBox ID="chk_chek" type="checkbox" CssClass="custom-checkbox" runat="server" />
                                                <label for="customCheck">Remember Me</label>
                                          
                                        </div>
                                        <asp:button ID="btnlogin" runat="server" CssClass="btn btn-primary btn-user btn-block" text="Login" Onclick="buttonlogin_Click" />
                                      <div id="txtkq" runat="server" class="text-danger"></div>
                                        <%--<a href="dangsach_member.aspx" class="btn btn-primary btn-user btn-block">Login</a>--%>




                                        <div class="text-center">
                                            <a class="small" href="forgot-password.html">Forgot Password?</a>
                                        </div>
                                        <div class="text-center">
                                            <a class="small" href="register.html">Create an Account!</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </form>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</body>
</html>
