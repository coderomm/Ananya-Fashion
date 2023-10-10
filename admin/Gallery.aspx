<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="admin_Gallery" %>

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
        <h1>Product Images Gallery Form</h1>
        <div class="col-lg-12 col-sm-12 col-md-12 col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body p-3">
                    <div class="forms-sample">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="form-group">
                                    <label for="placeImage">Upload Place Image 1st</label>
                                    <asp:FileUpload ID="galleryImage" runat="server" class="form-control file-upload-info" placeholder="Upload Image" />
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
                        <th scope="col">Image</th>
                        <th scope="col">Edit</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:HiddenField ID="hdnvalue" runat="server" />
                    <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" OnItemEditing="ListView1_ItemEditing" OnItemDeleting="ListView1_ItemDeleting">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false"></asp:Label>
                            <asp:FileUpload ID="lblgalleryImage" runat="server" Text='<%# Eval("galleryImage") %>' Visible="false" />
                            <asp:Label ID="lblgalleryImageStatus" runat="server" Text='<%# Eval("galleryImageStatus") %>' Visible="false"></asp:Label>

                            <tr class="">
                                <td><%# Eval("Id") %></td>
                                <td>
                                    <img src="../images/gallery/<%# Eval("galleryImage") %>" /></td>
                                <td>
                                    <asp:LinkButton ID="EditBtn" runat="server" Text="Edit" CommandName="edit" class="btn btn-gradient-primary me-2"></asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

