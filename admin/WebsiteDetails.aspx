<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="WebsiteDetails.aspx.cs" Inherits="admin_WebsiteDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <h1>Website Basic Details Form</h1>
        <div class="col-lg-12 col-sm-12 col-md-12 col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="forms-sample">
                        
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">

                                <div class="form-group">
                                    <label for="txtmobileNumber">Enter mobile number</label>
                                    <asp:TextBox ID="txtmobileNumber" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtemail">Enter email id</label>
                                    <asp:TextBox ID="txtemail" runat="server" class="form-control"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="txtgoogleMap">Enter google map link</label>
                                    <asp:TextBox ID="txtgoogleMap" runat="server" class="form-control"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="txtaddress">Enter address</label>
                                    <asp:TextBox ID="txtaddress" runat="server" class="form-control"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="txtabout">Enter about section</label>
                                    <div>
                                        <CKEditor:CKEditorControl ID="txtabout" BasePath="/ckeditor/" runat="server">
                                        </CKEditor:CKEditorControl>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <div class="form-group">
                                            <label for="logoImage">Upload Place Category Image</label>
                                            <asp:FileUpload ID="logoImage" runat="server" class="form-control" AllowMultiple="true" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <%=logoImagestr %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" class="btn btn-gradient-primary me-2" />
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

