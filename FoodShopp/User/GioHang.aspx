<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="FoodShopp.User.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_container" runat="server">
     <section class="ftco-section ftco-cart">
        <div class="container">
            <div class="row">
                <div class="col-md-12 ftco-animate fadeInUp ftco-animated">
                    <div class="cart-list">
                        <table class="table" style="height: 379px">
                            <thead>
                                <tr class="text-center">
                                   <th> Hinh anh</th>
                                    <th>Ten San Pham</th>
                                    <th>Gia</th>
                                    <th>So Luong</th>
                                    <th>Tong</th>
                                    <th>Thanh toan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- END TR-->
                                <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr class="text-center">
                                                <td class="image-prod">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("img","/Admin/img/{0}") %>' Width="100px" Height="80px" />
                                                </td>

                                                <td class="product-name">
                                                    <h3><%#Eval("name") %></h3>
                                                    <p>Clean vegetables</p>
                                                </td>

                                                <td class="price"><%#Eval("price") %></td>

                                                <td class="quantity">
                                                    <div class="input-group mb-3">
                                                        <input type="text" name="quantity" class="quantity form-control input-number" value="<%# Eval("quan") %>" min="1" max="100">
                                                    </div>
                                                </td>

                                                <td class="total"><%#Eval("price") %>*<%# Eval("quan") %></td>
                                                
                                                <td class="total"><a class="btn btn-outline-primary" href="chekout.aspx">Thanh Toán</a></td>
                                            </tr>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                <!-- END TR-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row justify-content-end">
                <div class="col-lg-4 mt-5 cart-wrap ftco-animate fadeInUp ftco-animated">
                    <div class="cart-total mb-3">
                        <h3>Coupon Code</h3>
                        <p>Enter your coupon code if you have one</p>
                      
                            <div class="form-group">
                                <label for="">Coupon code</label>
                                <input type="text" class="form-control text-left px-3" placeholder="">
                            </div>
                        
                    </div>
                    <p><a href="chekout.html" class="btn btn-primary py-3 px-4">Apply Coupon</a></p>
                </div>
                <div class="col-lg-4 mt-5 cart-wrap ftco-animate fadeInUp ftco-animated">
                    <div class="cart-total mb-3">
                        <h3>Estimate shipping and tax</h3>
                        <p>Enter your destination to get a shipping estimate</p>
                        
                            <div class="form-group">
                                <label for="">Country</label>
                                <input type="text" class="form-control text-left px-3" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="country">State/Province</label>
                                <input type="text" class="form-control text-left px-3" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="country">Zip/Postal Code</label>
                                <input type="text" class="form-control text-left px-3" placeholder="">
                            </div>
                        
                    </div>
                    <p><a href="chekout.html" class="btn btn-primary py-3 px-4">Estimate</a></p>
                </div>
                <div class="col-lg-4 mt-5 cart-wrap ftco-animate fadeInUp ftco-animated">
                    <div class="cart-total mb-3">
                        <h3>Cart Totals</h3>
                       
                        <p class="d-flex">
                            <span>gia</span>
                             <%#Eval("price") %> .00
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
                            <span>$17.60</span>
                        </p>
                    </div>
                    <p><a href="chekout.aspx" class="btn btn-primary py-3 px-4">Proceed to chekout</a></p>
                </div>
            </div>
        </div>
    </section>
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
