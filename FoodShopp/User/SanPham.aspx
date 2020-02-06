<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="FoodShopp.User.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_container" runat="server">
    
       <section class="ftco-section">
        <div class="container">
            <div class="row no-gutters ftco-services">
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-shipped"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Free Shipping</h3>
                            <span>On order over $100</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-diet"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Always Fresh</h3>
                            <span>Product well package</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-award"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Superior Quality</h3>
                            <span>Quality Products</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-customer-service"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Support</h3>
                            <span>24/7 Support</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-category ftco-no-pt">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6 order-md-last align-items-stretch d-flex">
                            <div class="category-wrap-2 ftco-animate img align-self-stretch d-flex" style="background-image: url(images/category.jpg);">
                                <div class="text text-center">
                                    <h2>Vegetables</h2>
                                    <p>Protect the health of every home</p>
                                    <p><a href="#" class="btn btn-primary">Shop now</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(images/category-1.jpg);">
                                <div class="text px-3 py-1">
                                    <h2 class="mb-0"><a href="#">Fruits</a></h2>
                                </div>
                            </div>
                            <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/category-2.jpg);">
                                <div class="text px-3 py-1">
                                    <h2 class="mb-0"><a href="#">Vegetables</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(images/category-3.jpg);">
                        <div class="text px-3 py-1">
                            <h2 class="mb-0"><a href="#">Juices</a></h2>
                        </div>
                    </div>
                    <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/category-4.jpg);">
                        <div class="text px-3 py-1">
                            <h2 class="mb-0"><a href="#">Dried</a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center mb-3 pb-3">
                <div class="col-md-12 heading-section text-center ftco-animate">
                    <span class="subheading">Featured Products</span>
                    <h2 class="mb-4">Our Products</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row" >
                <div runat="server" id="txtkq"></div>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repreater1_ItemCommand"  >
            <ItemTemplate>
                <div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated" >
                <div class="product" >
    					<a href="#" class="img-prod"><img style="width:460px;height:165px" class="img-fluid" src="<%#Eval("img","/Admin/img/{0}")%>" alt="Colorlib Template">
    						<span class="status">30%</span>
    						<div class="overlay"></div>
    					</a>
    					&nbsp;<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#"><%#Eval("name") %></a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price">
                                        <span class="mr-2 price-dc"><%#Eval("price") %></span>
                                        <span class="price-sale"><%#Eval("price_promo") %></span></p>
		    					</div>
	    					</div>
	    					<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
                                     <asp:HiddenField ID="hr_id" Value='<%# Eval("id") %>' runat="server" />
                                    <asp:HiddenField ID="hr_name" Value='<%# Eval("name") %>' runat="server" />
                                            <asp:HiddenField ID="hr_img" Value='<%#Eval("img") %>' runat="server" />
                                            <asp:HiddenField ID="hr_price" Value='<%#Eval("price") %>' runat="server" />
                                           <%-- <asp:Button ID="btn_cart" CssClass="add-to-cart d-flex justify-content-center align-items-center text-center" runat="server" CommandName="add_to_cart" Text="Add to cart" />--%>
                                    <asp:LinkButton ID="btn_detail" CssClass="add-to-cart d-flex justify-content-center align-items-center text-center" runat="server" href="chitietsanpham.aspx?detail=1" >
                                        
                                        <span><i class="ion-ios-menu"></i></span>
                                    </asp:LinkButton>
                                      <asp:LinkButton ID="btn_cart" CssClass="add-to-cart d-flex justify-content-center align-items-center text-center" runat="server" CommandName="add_to_cart" >
                                          <i class="ion-ios-cart"></i>
                                      </asp:LinkButton>
    							</div>
                              
    						</div>
                          
    					</div>
    				</div>
                
             
    	        </div>
            </ItemTemplate>
        </asp:Repeater>
                   
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Food_DBConnectionString %>" SelectCommand="SELECT [id], [name], [price], [price_promo], [img] FROM [food]"></asp:SqlDataSource>
               
            </div>
            </div>
              <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
               
                <li class="active"><span>1</span> </li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
               
              </ul>
            </div>
          </div>
        </div>
        
    </section>

   
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="GioHang.aspx">Xem giỏ hàng</asp:HyperLink>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
