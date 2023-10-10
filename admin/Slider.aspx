<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Slider.aspx.cs" Inherits="admin_Slider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <h1>Home Slider Form</h1>
        <div class="col-lg-12 col-sm-12 col-md-12 col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="forms-sample">

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <div class="form-group">
                                    <label for="sliderImg1">Upload Slider Image 1</label>
                                    <asp:FileUpload ID="sliderImg1" runat="server" class="form-control" AllowMultiple="true" />
                                </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <%=slider1 %>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <div class="form-group">
                                    <label for="sliderImg2">Upload Slider Image 2</label>
                                    <asp:FileUpload ID="sliderImg2" runat="server" class="form-control" AllowMultiple="true" />
                                </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <%=slider2 %>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <div class="form-group">
                                    <label for="sliderImg3">Upload Slider Image 3</label>
                                    <asp:FileUpload ID="sliderImg3" runat="server" class="form-control" AllowMultiple="true" />
                                </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                                        <%=slider3 %> 
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

