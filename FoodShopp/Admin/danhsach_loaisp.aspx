<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="danhsach_loaisp.aspx.cs" Inherits="FoodShopp.Admin.danhsach_loaisp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_blank" runat="server">

    <h3 class="m-0 font-weight-bold text-primary" style="text-align: center">Danh sách loại sản phẩm</h3>
    <div class="table-responsive" style="margin-top: 8px">
        <div class="card shadow mb-4">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="text-align: center">ID</th>
                                <th style="text-align: center">Type Name</th>
                                <th style="text-align: center">Type Post</th>
                                <th style="text-align: center">Review Image</th>
                                <th style="text-align: center">Status</th>
                                <th style="text-align: center">User Name</th>
                                <th style="text-align: center">Modified</th>

                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label ID="username" runat="server" Text='<%# Eval("type_id") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("type_name") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("type_pos") %>'></asp:Label>
                                        </td>
                                        <td style="text-align: center">
                                            <img src="<%# Eval("type_img","/admin/img/{0}") %>" width="50px" height="50px" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("modified") %>'></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Food_DBConnectionString7 %>" DeleteCommand="DELETE FROM [food_type] WHERE [type_id] = @type_id" InsertCommand="INSERT INTO [food_type] ([type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (@type_name, @type_pos, @type_img, @status, @username, @modified)" SelectCommand="SELECT * FROM [food_type]" UpdateCommand="UPDATE [food_type] SET [type_name] = @type_name, [type_pos] = @type_pos, [type_img] = @type_img, [status] = @status, [username] = @username, [modified] = @modified WHERE [type_id] = @type_id">
        <DeleteParameters>
            <asp:Parameter Name="type_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="type_name" Type="String" />
            <asp:Parameter Name="type_pos" Type="Int32" />
            <asp:Parameter Name="type_img" Type="String" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="modified" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type_name" Type="String" />
            <asp:Parameter Name="type_pos" Type="Int32" />
            <asp:Parameter Name="type_img" Type="String" />
            <asp:Parameter Name="status" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="modified" Type="DateTime" />
            <asp:Parameter Name="type_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
