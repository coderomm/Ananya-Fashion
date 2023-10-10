<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Testimonials.aspx.cs" Inherits="admin_Testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <h1>Testimonials Form</h1>
        <div class="col-lg-12 col-sm-12 col-md-12 col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="forms-sample">

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">

                                <div class="form-group">
                                    <label for="t_username">Enter User Name</label>
                                    <asp:TextBox ID="t_username" runat="server" class="form-control"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="t_review">Enter Testimonials Review</label>
                                    <asp:TextBox ID="t_review" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn btn-gradient-primary me-2" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="false" OnClick="btnUpdate_Click" class="btn btn-gradient-primary me-2" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" class="btn btn-gradient-primary me-2" />

                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12 col-sm-12 col-md-12 col-12">
            <div class="table-responsive">
                <table class="table" style="background-color: #fff;">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Username Name</th>
                            <th scope="col">Testimonials Review</th>
                            <th scope="col">Status</th>
                            <th scope="col">Edit</th>
                            <th scope="col">Delete</th>
                            <th scope="col">Change Status</th>

                        </tr>
                    </thead>
                    <tbody>
                        <asp:HiddenField ID="hdnvalue" runat="server" />
                        <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" OnItemEditing="ListView1_ItemEditing" OnItemDeleting="ListView1_ItemDeleting">
                            <ItemTemplate>
                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false"></asp:Label>
                                <asp:Label ID="lblt_username" runat="server" Text='<%# Eval("t_username") %>' Visible="false"></asp:Label>
                                <asp:Label ID="lblt_review" runat="server" Text='<%# Eval("t_review") %>' Visible="false"></asp:Label>
                                <asp:Label ID="lblt_Status" runat="server" Text='<%# Eval("t_Status") %>' Visible="false"></asp:Label>

                                <tr class="">

                                    <td><%# Eval("Id") %></td>
                                    <td><%# Eval("t_username") %></td>
                                    <td><%# Eval("t_review") %></td>
                                    <td><%# Eval("t_Status") %></td>
                                    <td>
                                        <asp:Button ID="EditBtn" runat="server" Text="Edit" CommandName="edit" class="btn btn-gradient-primary me-2" />
                                    </td>

                                    <td>
                                        <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CommandName="delete" class="btn btn-gradient-primary me-2" />
                                    </td>

                                    <td>
                                        <span id="Span1" runat="server" visible='<%# Eval("t_Status").ToString() == "1" ? true : false %>'>
                                            <asp:Button ID="Active" runat="server" Text="Deactive" CommandName="Deactive" class="btn btn-gradient-primary me-2" />
                                        </span>

                                        <span id="Span2" runat="server" visible='<%# Eval("t_Status").ToString() == "0" ? true : false %>'>
                                            <asp:Button ID="Deactive" runat="server" Text="Active" CommandName="Active" class="btn btn-gradient-primary me-2" />
                                        </span>
                                    </td>


                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

