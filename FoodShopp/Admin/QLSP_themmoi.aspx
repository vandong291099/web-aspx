<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="QLSP_themmoi.aspx.cs" Inherits="FoodShopp.Admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .form-control-user {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_blank" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <div class="p-5">
                <div runat="server" id="txtfkq"></div>
                <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Thêm food</h1>
                </div>
                <div class="col-lg-12">
                    <div class="form-group row">
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="name_food" CssClass="form-control form-control-user" runat="server" placeholder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="rfv_typename" runat="server" ErrorMessage="Chưa nhập tên !" ControlToValidate="name_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="des_food" CssClass="form-control form-control-user" runat="server" placeholder="Description"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Chưa nhập Description!" ControlToValidate="des_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="price_food" CssClass="form-control form-control-user" runat="server" TextMode="Number" placeholder="Price"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Chưa nhập Price !" ControlToValidate="price_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="pricepromo_food" CssClass="form-control form-control-user" runat="server" TextMode="Number" placeholder="Price promo"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Chưa nhập Price promo !" ControlToValidate="pricepromo_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:Image ID="show_thumb" Width="70" Height="70" runat="server" BorderColor="#0033CC" ImageUrl="..." BackColor="#336600" />
                            <asp:Label ID="Label2" runat="server" Text="Thumb"></asp:Label>
                            <asp:FileUpload ID="thumb" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vui lòng nhập thông tin sản phẩm" ControlToValidate="thumb" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>


                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:Image ID="show_img" Width="70" Height="70" runat="server" BorderColor="#0033CC" ImageUrl="..." BackColor="#336600" EnableTheming="True" />
                            <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
                            <asp:FileUpload ID="img" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Vui lòng nhập thông tin sản phẩm" ControlToValidate="img" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>



                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="unit_food" CssClass="form-control form-control-user" runat="server" placeholder="Unit"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator8" runat="server" ErrorMessage="không được rỗng !" ControlToValidate="unit_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="percentpromo_food" CssClass="form-control form-control-user" runat="server" TextMode="SingleLine" placeholder="Percent promo"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator9" runat="server" ErrorMessage="không được rỗng !" ControlToValidate="percentpromo_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="rating_food" CssClass="form-control form-control-user" TextMode="Number" runat="server" placeholder="Ratinng"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator10" runat="server" ErrorMessage="không được rỗng !" ControlToValidate="rating_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="sold_food" CssClass="form-control form-control-user" TextMode="Number" runat="server" placeholder="Sold"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator11" runat="server" ErrorMessage="không được rỗng !" ControlToValidate="sold_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="point_food" CssClass="form-control form-control-user" TextMode="SingleLine" runat="server" placeholder="Point"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator12" runat="server" ErrorMessage="không được rỗng !" ControlToValidate="point_food"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <asp:TextBox ID="type_food" CssClass="form-control form-control-user" TextMode="Number" runat="server" placeholder="Type"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator13" runat="server" ErrorMessage="không được rỗng !" ControlToValidate="type_food"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <hr />
                    <div class="form-group row">
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <asp:Label ID="status_food" runat="server" Text="Trạng Thái"></asp:Label>
                            <asp:DropDownList ID="drstatus_food" runat="server" CssClass="form-control form-control-user">
                                <asp:ListItem Value="1">Còn hàng</asp:ListItem>
                                <asp:ListItem Value="0">Hết hàng</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <div class="col-lg-4 col-sm-6 mb-3 mb-sm-0">
                            <%--  <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name">--%>
                            <div>
                                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                <asp:TextBox ID="ussername_food" CssClass="form-control form-control-user" runat="server" placeholder="Ussername"></asp:TextBox>
                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Chưa nhập ussername!" ControlToValidate="ussername_food"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <hr />
                        <%-- <a href="login.html" class="btn btn-primary btn-user btn-block">Register Account
                </a>--%>
                        <asp:Button ID="btn_add_food" CssClass="btn btn-danger btn-user btn-block" runat="server" Text="Thêm" OnClick="btn_addfood" />
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
