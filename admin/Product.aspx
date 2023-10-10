<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="admin_Product" %>

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
        <h1>Product Information Form</h1>
        <div class="col-lg-12 col-sm-12 col-md-12 col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body p-3">
                    <div class="forms-sample">
                        <div class="row">

                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="txtproductName">Enter Product Name</label>
                                            <asp:TextBox ID="txtproductName" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="txtproductPrice">Enter Product Price</label>
                                            <asp:TextBox ID="txtproductPrice" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="txtproductDetails">Enter Product blogDetail</label>
                                    <div>
                                        <CKEditor:CKEditorControl ID="txtproductDetails" BasePath="/ckeditor/" runat="server">
                                        </CKEditor:CKEditorControl>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="productImage1">Upload Product Image 1st</label>
                                            <asp:FileUpload ID="productImage1" runat="server" class="form-control file-upload-info" placeholder="Upload Image" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="productImage2">Upload Product Image 2nd</label>
                                            <asp:FileUpload ID="productImage2" runat="server" class="form-control file-upload-info" placeholder="Upload Image" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="productImage3">Upload Product Image 3rd</label>
                                            <asp:FileUpload ID="productImage3" runat="server" class="form-control file-upload-info" placeholder="Upload Image" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="productImage4">Upload Product Image 4th</label>
                                            <asp:FileUpload ID="productImage4" runat="server" class="form-control file-upload-info" placeholder="Upload Image" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label for="productImage5">Upload Product Image 5th</label>
                                            <asp:FileUpload ID="productImage5" runat="server" class="form-control file-upload-info" placeholder="Upload Image" />
                                        </div>
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
                        <th scope="col">Product Name</th>
                        <th scope="col">Product Prie</th>
                        <th scope="col">Product Image1</th>
                        <th scope="col">Product Image2</th>
                        <th scope="col">Product Image3</th>
                        <th scope="col">Product Image4</th>
                        <th scope="col">Product Image5</th>
                        <th scope="col">productStatus</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                        <th scope="col">Change Status</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:HiddenField ID="hdnvalue" runat="server" />
                    <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" OnItemEditing="ListView1_ItemEditing" OnItemDeleting="ListView1_ItemDeleting">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lblproductName" runat="server" Text='<%# Eval("productName") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lblproductPrice" runat="server" Text='<%# Eval("productPrice") %>' Visible="false"></asp:Label>
                            <asp:FileUpload ID="lblproductImage1" runat="server" Text='<%# Eval("productImage1") %>' Visible="false" />
                            <asp:FileUpload ID="lblproductImage2" runat="server" Text='<%# Eval("productImage2") %>' Visible="false" />
                            <asp:FileUpload ID="lblproductImage3" runat="server" Text='<%# Eval("productImage3") %>' Visible="false" />
                            <asp:FileUpload ID="lblproductImage4" runat="server" Text='<%# Eval("productImage4") %>' Visible="false" />
                            <asp:FileUpload ID="lblproductImage5" runat="server" Text='<%# Eval("productImage5") %>' Visible="false" />
                            <asp:Label ID="lblproductDetails" runat="server" Text='<%# Eval("productDetails") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lblproductStatus" runat="server" Text='<%# Eval("productStatus") %>' Visible="false"></asp:Label>

                            <tr class="">
                                <td><%# Eval("Id") %></td>
                                <td><%# Eval("productName") %></td>
                                <td><%# Eval("productPrice") %></td>

                                <td>
                                    <img src="../images/products/<%# Eval("productImage1") %>" />
                                </td>
                                <td>
                                    <img src="../images/products/<%# Eval("productImage2") %>" />
                                </td>
                                <td>
                                    <img src="../images/products/<%# Eval("productImage3") %>" />
                                </td>
                                <td>
                                    <img src="../images/products/<%# Eval("productImage4") %>" />
                                </td>
                                <td>
                                    <img src="../images/products/<%# Eval("productImage5") %>" />
                                </td>
                                <td><%# Eval("productStatus") %></td>
                                <td>
                                    <asp:LinkButton ID="EditBtn" runat="server" Text="Edit" CommandName="edit" class="btn btn-gradient-primary me-2"></asp:LinkButton>
                                </td>

                                <td>
                                    <asp:LinkButton ID="DeleteBtn" runat="server" Text="Delete" CommandName="delete" class="btn btn-gradient-primary me-2"></asp:LinkButton>
                                </td>

                                <td>
                                    <span id="Span1" runat="server" visible='<%# Eval("productStatus").ToString() == "1" ? true : false %>'>
                                        <asp:Button ID="Active" runat="server" Text="Deactive" CommandName="Deactive" class="btn btn-gradient-primary me-2" />
                                    </span>

                                    <span id="Span2" runat="server" visible='<%# Eval("productStatus").ToString() == "0" ? true : false %>'>
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

