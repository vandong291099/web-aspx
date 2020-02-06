<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="dangsach_member.aspx.cs" Inherits="FoodShopp.Admin.dangsach_member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_blank" runat="server">
    <div runat="server" id="txtResult"></div>
    <div class="col-lg-8 col-sm-6">
        <div class="form-group row">
            <asp:TextBox ID="txtKey" CssClass="form-control form-control-user" Width="200" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" CssClass="btn btn-outline-primary" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </div>
    </div>
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th>Username</th>
                                <th>Passworkd</th>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Role</th>
                                <th>Edit</th>
                            </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("username") %></td>
                    <td><%#Eval("pass") %></td>
                    <th><%#Eval("name") %></th>
                    <td><%#Eval("phone") %></td>
                    <td><%#Eval("status") %></td>
                    <td><%#Eval("role") %></td>
                    <td>
                        <a class="btn btn-outline-primary" href="?del=<%#Eval("username") %>">Delete</a>
                        <a class="btn btn-outline-primary" href="?update=<%#Eval("username") %>">Update</a>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
                           </div>
                            </div>
            </FooterTemplate>
        </asp:Repeater>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <a class="btn btn-outline-primary" href="?page=<%#Eval("index") %>
                    <% if (Request["key"] != null) Response.Write("&key=" + Request["key"]); %>
                    <% if (Request["id"] != null) Response.Write("&id=" + Request["id"]); %>" style="background-color: <%# (Eval("active").ToString()=="1"?"green":"bdarkslateblue")%>">
                    <%#Eval("index") %></a>
            </ItemTemplate>
        </asp:Repeater>
    </div>




    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
