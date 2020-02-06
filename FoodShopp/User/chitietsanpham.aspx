<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="chitietsanpham.aspx.cs" Inherits="FoodShopp.User.chitietsanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_container" runat="server">
   <section class="ftco-section">
    	<div class="container">
    		<div class="row">
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-lg-6 mb-5 ftco-animate fadeInUp ftco-animated">
    				<a href="img/<%#Eval("type_img")%>" class="image-popup"><img src="<%# Eval("type_img","/Admin/img/{0}") %>" class="img-fluid" alt="Colorlib Template"></a>
    			</div>
                    </ItemTemplate>
                </asp:Repeater>
    			
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Food_DBConnectionString %>" SelectCommand="SELECT [type_img] FROM [food_type]" >
                   
                </asp:SqlDataSource>
    			
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        	<div class="col-lg-6 product-details pl-md-5 ftco-animate fadeInUp ftco-animated">
    				    <h3>Bell Pepper</h3>
    				    <div class="rating d-flex">
							    <p class="text-left mr-4">
								    <a href="#" class="mr-2">5.0</a>
								    <a href="#"><span class="ion-ios-star-outline"></span></a>
								    <a href="#"><span class="ion-ios-star-outline"></span></a>
								    <a href="#"><span class="ion-ios-star-outline"></span></a>
								    <a href="#"><span class="ion-ios-star-outline"></span></a>
								    <a href="#"><span class="ion-ios-star-outline"></span></a>
							    </p>
							    <p class="text-left mr-4">
								    <a href="#" class="mr-2" style="color: #000;">100 <span style="color: #bbb;">Rating</span></a>
							    </p>
							    <p class="text-left">
								    <a href="#" class="mr-2" style="color: #000;">500 <span style="color: #bbb;">Sold</span></a>
							    </p>
						    </div>
    				    <p class="price" ><span>$120.00</span></p>
    				    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until.
						    </p>
						    <div class="row mt-4">
							    <div class="col-md-6">
								    <div class="form-group d-flex">
		                  <div class="select-wrap">
	                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                      <select name="" id="" class="form-control">
	                  	    <option value="">Small</option>
	                        <option value="">Medium</option>
	                        <option value="">Large</option>
	                        <option value="">Extra Large</option>
	                      </select>
	                    </div>
		                </div>
							    </div>
							    <div class="w-100"></div>
							    <div class="input-group col-md-6 d-flex mb-3">
	             	    <span class="input-group-btn mr-2">
	                	    <button type="button" class="quantity-left-minus btn" data-type="minus" data-field="">
	                       <i class="ion-ios-remove"></i>
	                	    </button>
	            		    </span>
	             	    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
	             	    <span class="input-group-btn ml-2">
	                	    <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                         <i class="ion-ios-add"></i>
	                     </button>
	             	    </span>
	          	    </div>
	          	    <div class="w-100"></div>
	          	    <div class="col-md-12">
	          		    <p style="color: #000;">600 kg available</p>
	          	    </div>
          	    </div>
          	    <p><a href="GioHang.aspx" class="btn btn-black py-3 px-5">Add to Cart</a></p>
    			    </div>
                        </ItemTemplate>
                    </asp:Repeater>
    		
    		    </div>
    	    </div>
        </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
