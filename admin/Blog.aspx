<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="admin_Blog" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .select2-container {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="row">
        <h1>Blogs Form</h1>
        <div class="col-lg-12 col-sm-12 col-md-12 col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body p-3">
                    <div class="forms-sample">

                        <div class="row">
                            <div class="col-lg-12 col-sm-12 col-md-12 col-12">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="blogTitle">Enter Blog Title Name</label>
                                            <asp:TextBox ID="blogTitle" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="blogDate">Enter Blog Date</label>
                                            <asp:TextBox ID="blogDate" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="blogImage">Upload Blog Image</label>
                                            <asp:FileUpload ID="blogImage" runat="server" class="form-control file-upload-info" placeholder="Upload Image" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="form-group">
                                    <label for="blogDetail">Enter Blog Details</label>
                                    <div>
                                        <CKEditor:CKEditorControl ID="blogDetail" BasePath="/ckeditor/" runat="server">
                                        </CKEditor:CKEditorControl>
                                    </div>
                                </div>
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
                        <th scope="col">Title</th>
                        <th scope="col">Date</th>
                        <th scope="col">Image</th>
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
                            <asp:Label ID="lblblogTitle" runat="server" Text='<%# Eval("blogTitle") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lblblogDate" runat="server" Text='<%# Eval("blogDate") %>' Visible="false"></asp:Label>
                            <asp:FileUpload ID="lblblogImage" runat="server" Text='<%# Eval("blogImage") %>' Visible="false" />
                            <asp:Label ID="lblblogDetail" runat="server" Text='<%# Eval("blogDetail") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lblblogStatus" runat="server" Text='<%# Eval("blogStatus") %>' Visible="false"></asp:Label>

                            <tr class="">
                                <td><%# Eval("Id") %></td>
                                <td><%# Eval("blogTitle") %></td>
                                <td><%# Eval("blogDate") %></td>
                                   <td> <img src="../images/blog/<%# Eval("blogImage") %>" /></td>
                                <td><%# Eval("blogStatus") %></td>
                                <td>
                                    <asp:LinkButton ID="EditBtn" runat="server" Text="Edit" CommandName="edit" class="btn btn-gradient-primary me-2"></asp:LinkButton>
                                </td>

                                <td>
                                    <asp:LinkButton ID="DeleteBtn" runat="server" Text="Delete" CommandName="delete" class="btn btn-gradient-primary me-2"></asp:LinkButton>
                                </td>

                                <td>
                                    <span id="Span1" runat="server" visible='<%# Eval("blogStatus").ToString() == "1" ? true : false %>'>
                                        <asp:Button ID="Active" runat="server" Text="Deactive" CommandName="Deactive" class="btn btn-gradient-primary me-2" />
                                    </span>

                                    <span id="Span2" runat="server" visible='<%# Eval("blogStatus").ToString() == "0" ? true : false %>'>
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
</asp:Content>

