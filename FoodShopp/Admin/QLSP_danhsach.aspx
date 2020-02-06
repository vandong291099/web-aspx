<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="QLSP_danhsach.aspx.cs" Inherits="FoodShopp.Admin.QLSP_danhsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="content_blank">

    <h3 class="m-0 font-weight-bold text-primary" style="text-align: center">Danh sách Food</h3>

    <div class="table-responsive" style="margin-top: 8px">
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="text-align: center">ID</th>
                                <th style="text-align: center">Name</th>
                                <th style="text-align: center">Description</th>
                                <th style="text-align: center">Price</th>
                                <%--<th style="text-align:center">Price promo</th>
                                          <th style="text-align:center">Thumb</th>--%>
                                <th style="text-align: center">Image</th>
                                <th style="text-align: center">Thumb</th>
                                <th style="text-align: center">Unit</th>
                                <%--<th style="text-align:center">Percent promo</th>
                                          <th style="text-align:center">Rating</th>--%>
                                <th style="text-align: center">Sold</th>
                                <%--<th style="text-align:center">Point</th>--%>
                                <th style="text-align: center">Type</th>
                                <th style="text-align: center">Status</th>
                                <%--<th style="text-align:center">Username</th>
                                          <th style="text-align:center">Modified</th>--%>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label ID="username" runat="server" Text='<%# Eval("id") %>'></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="name" runat="server" Text='<%# Eval("name") %>'></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="phone" runat="server" Text='<%# Eval("description") %>'></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="email" runat="server" Text='<%# Eval("price") %>'></asp:Label>

                                        </td>
                                        <%--<td>
                                                      <asp:Label ID="role" runat="server" Text='<%# Eval("price_promo") %>' ></asp:Label>

                                                  </td>--%>
                                        <%--<td>
                                                      <asp:Label ID="status" runat="server" Text='<%# Eval("thumb") %>' ></asp:Label>

                                                  </td>--%>
                                        <td>

                                            <img src="<%# Eval("img","/admin/img/{0}") %>" width="50px" height="50px" />
                                        </td>
                                        <td>

                                            <img src="<%# Eval("thumb","/admin/img/{0}") %>" width="50px" height="50px" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("unit") %>'></asp:Label>

                                        </td>
                                        <%--<td>
                                                      <asp:Label ID="Label3" runat="server" Text='<%# Eval("percent_promo") %>'></asp:Label>

                                                  </td>
                                                  <td>
                                                      <asp:Label ID="Label4" runat="server" Text='<%# Eval("rating") %>'></asp:Label>

                                                  </td>--%>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("sold") %>'></asp:Label>

                                        </td>
                                        <%--<td>
                                                      <asp:Label ID="Label6" runat="server" Text='<%# Eval("point") %>'></asp:Label>

                                                  </td>--%>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("type") %>'></asp:Label>

                                        </td>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("status") %>'></asp:Label>

                                        </td>




                                    </tr>

                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Food_DBConnectionString4 %>" SelectCommand="SELECT * FROM [food]" DeleteCommand="DELETE FROM [food] WHERE [id] = @id" InsertCommand="INSERT INTO [food] ([name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (@name, @description, @price, @price_promo, @thumb, @img, @unit, @percent_promo, @rating, @sold, @point, @type, @status, @username, @modified)" UpdateCommand="UPDATE [food] SET [name] = @name, [description] = @description, [price] = @price, [price_promo] = @price_promo, [thumb] = @thumb, [img] = @img, [unit] = @unit, [percent_promo] = @percent_promo, [rating] = @rating, [sold] = @sold, [point] = @point, [type] = @type, [status] = @status, [username] = @username, [modified] = @modified WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="price_promo" Type="Int32" />
            <asp:Parameter Name="thumb" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="unit" Type="String" />
            <asp:Parameter Name="percent_promo" Type="Int32" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="sold" Type="Int32" />
            <asp:Parameter Name="point" Type="Int32" />
            <asp:Parameter Name="type" Type="Int32" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="modified" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="price_promo" Type="Int32" />
            <asp:Parameter Name="thumb" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="unit" Type="String" />
            <asp:Parameter Name="percent_promo" Type="Int32" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="sold" Type="Int32" />
            <asp:Parameter Name="point" Type="Int32" />
            <asp:Parameter Name="type" Type="Int32" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="modified" Type="DateTime" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

