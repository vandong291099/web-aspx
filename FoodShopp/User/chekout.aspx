<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="chekout.aspx.cs" Inherits="FoodShopp.User.chekout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_container" runat="server">
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 ftco-animate fadeInUp ftco-animated">
                    <form action="#" class="billing-form">
                        <h3 class="mb-4 billing-heading">Billing Details</h3>
                       
                        <div class="row align-items-end">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtName">Name</label>

                                    <asp:TextBox ID="txtName" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Vui lòng nhập thông tin đầy đủ" ControlToValidate="txtName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtphone">Phone</label>
                                    <asp:TextBox ID="txtphone" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_phone" runat="server" ErrorMessage="Vui lòng nhập thông tin đầy đủ" ControlToValidate="txtphone" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtCus_add">Cus_add</label>
                                    <asp:TextBox ID="txtCus_add" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_cus_add" runat="server" ErrorMessage="Vui lòng nhập thông tin đầy đủ" ControlToValidate="txtCus_add" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtquantity">Quantity</label>
                                    <asp:TextBox ID="txtQuan" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_quan" runat="server" ErrorMessage="Vui lòng nhập thông tin đầy đủ" ControlToValidate="txtQuan" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Sum">Sum</label>
                                    <asp:TextBox ID="txtsum" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvsum" runat="server" ErrorMessage="Vui lòng nhập thông tin đầy đủ" ControlToValidate="txtsum" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="stt">Status</label>
                                    <asp:DropDownList ID="ddl_status" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">Active</asp:ListItem>
                                        <asp:ListItem Value="1">Lock</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="CusUsername">Cus_Username</label>
                                    <asp:TextBox ID="txtCus_Username" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_cus_us" runat="server" ErrorMessage="Vui lòng nhập thông tin đầy đủ" ControlToValidate="txtCus_Username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <asp:Label ID="lbl_checkname" runat="server" Text="" CssClass="text-danger"></asp:Label>
                            <div class="w-100"></div>
                            <%-- <a href="#" class="btn btn-primary py-3 px-4">Tạo hóa đơn</a>--%>
                            <asp:LinkButton ID="btnCreate" CssClass="btn btn-primary py-3 px-4" runat="server" OnClick="ThemMoi_Click">Tạo hóa đơn</asp:LinkButton>
                            <%--   <div class="col-md-12">
                	<div class="form-group mt-4">
										<div class="radio">
										  <label class="mr-3"><input type="radio" name="optradio"> Create an Account? </label>
										  <label><input type="radio" name="optradio"> Ship to different address</label>
										</div>
									</div>
                </div>--%>
                        </div>
                    </form>
                    <!-- END -->
                </div>
                <div class="col-xl-5">
                    <div class="row mt-5 pt-3">
                        <div class="col-md-12 d-flex mb-5">
                            <div class="cart-detail cart-total p-3 p-md-4">
                                <h3 class="billing-heading mb-4">Cart Total</h3>
                                <p class="d-flex">
                                    <span>Subtotal</span>
                                    <span>$20.60</span>
                                </p>
                                <p class="d-flex">
                                    <span>Delivery</span>
                                    <span>$0.00</span>
                                </p>
                                <p class="d-flex">
                                    <span>Discount</span>
                                    <span>$3.00</span>
                                </p>
                                <hr>
                                <p class="d-flex total-price">
                                    <span>Total</span>
                                    <span>
                                    30</span>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- .col-md-8 -->
            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
