<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FoodShopp.Admin.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_blank" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                 <div runat="server" id="txtkq"></div>
                <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Thêm tài khoản !</h1>
                </div>
                <div class="form-group row">
                    <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                        <%--<input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="First Name">--%>
                        <asp:TextBox ID="txtTenDangNhap" CssClass="form-control form-control-user" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                        <asp:Label ID="lbl_checkUser" runat="server" Text="" CssClass="text-danger"></asp:Label>
                        <asp:RequiredFieldValidator ID="rfv_TenDangNhap" runat="server" ErrorMessage="Tên đăng nhập không được để trống!" ControlToValidate="txtTenDangNhap" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                        <asp:TextBox ID="txtTenHienThi" CssClass="form-control form-control-user" runat="server" placeholder="Tên hiển thị"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Rf_Tenhienthi" runat="server" ErrorMessage="Tên hiển thị không được để trống!" ControlToValidate="txtTenHienThi" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                   
                </div>
                <div class="form-group row">
                    <div class="col-lg-4 mb-3 mb-sm-0">
                        <%--<input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">--%>
                        <asp:TextBox ID="txtPass" TextMode="Password" CssClass="form-control form-control-user" runat="server" placeholder="Password" ControlToValidate="txtPass"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Rfv_Pass" runat="server"  ErrorMessage="Password không được để trống!" ControlToValidate="txtPass" ForeColor="Red" ></asp:RequiredFieldValidator>
                       
                    </div>
                    <div class="col-lg-4">
                       
                        <asp:TextBox ID="txtRepass" TextMode="Password" CssClass="form-control form-control-user" runat="server" placeholder="Repeat Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Rfv_Repass" runat="server" ErrorMessage="Repass không được để trống!" ControlToValidate="txtRepass" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cpv_repass" runat="server" ErrorMessage="Password không giống nhau" ControlToValidate="txtRepass" ControlToCompare="txtPass"></asp:CompareValidator>
                    </div>
                    <div class="col-lg-4">
                        <%--<input type="text" class="form-control form-control-user" id="PhoneNumber" placeholder="Phone Number">--%>
                        <asp:TextBox ID="txtPhone" CssClass="form-control form-control-user" runat="server" placeholder="Phone Number"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Rfv_phone" runat="server" ErrorMessage="Phone không được để trống!" ControlToValidate="txtPhone" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgl_phone" runat="server" ErrorMessage="Số điện thoại phải 10 số" ValidationExpression="\S{10,10}" ControlToValidate="txtPhone"></asp:RegularExpressionValidator>
                      
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6 mb-3 mb-sm-0">
                        <asp:Label ID="status" runat="server" Text="Trạng Thái"></asp:Label>
                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control form-control-user">
                            <asp:ListItem Value="1">Đang Hoạt Động</asp:ListItem>
                            <asp:ListItem Value="0">Ngưng Hoạt Động</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-6">
                        <asp:Label ID="role" runat="server" Text="Role"></asp:Label>
                        <asp:DropDownList ID="ddlRole" CssClass="form-control form-control-user" runat="server">
                            <asp:ListItem Value="0">Admin</asp:ListItem>
                            <asp:ListItem Value="1">member</asp:ListItem> 
                        </asp:DropDownList>
                    </div>
                </div>
               <%-- <a href="login.html" class="btn btn-primary btn-user btn-block">Register Account
                </a>--%>
                
                <asp:button ID="btnRegister" runat="server" CssClass="btn btn-primary btn-user btn-block" text="Thêm tài khoản" OnClick="Create_Click" />
                <hr />
                
        
                 
               
            </div>
        </div>
    </div>

    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
