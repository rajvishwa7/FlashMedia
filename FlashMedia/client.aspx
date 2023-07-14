<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="client.aspx.cs" Inherits="FlashMedia.client" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" />

    <title>Flash Media</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/animated.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link href="content/toastr.css" rel="stylesheet" />

</head>

<body>



    <div class="pre-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-8 col-7">
                    <ul class="info">
                        <li><a href="#"><i class="fa fa-envelope"></i>flashmedia@empire.com</a></li>
                        <li><a href="#"><i class="fa fa-phone"></i>007-007-007</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-sm-4 col-5">
                    <ul class="social-media">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-whatsapp"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">

                        <a href="index.aspx" class="logo">
                            <h2>Flash Media</h2>
                        </a>


                        <ul class="nav">
                            <li class="scroll-to-section"><a href="index.aspx" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="index.aspx">About</a></li>
                            <li class="scroll-to-section"><a href="index.aspx">Services</a></li>
                            <li class="scroll-to-section"><a href="index.aspx">Projects</a></li>
                            <%--<li class="scroll-to-section"><a href="#client">Client</a></li>--%>
                            <li class="scroll-to-section"><a href="contact.aspx">Contact</a></li>
                            <li class="scroll-to-section btn_logSig">
                                <div class="border-first-button"><a href="index.aspx">LogOut</a></div>
                                
                            </li>
                        </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>

                    </nav>
                </div>
            </div>
        </div>
    </header>

    <div id="client" class="contact-us section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                        <h2 class="text-info">Flash Media Client Intake Form</h2>

                        <div class="line-dec"></div>
                    </div>
                </div>
                <form id="contact" runat="server" method="post" class="row g-3 justify-content-center">
                    <div class="col-md-4">
                        <asp:Label ID="Label8" runat="server" Text="Client ID"></asp:Label>
                        <asp:TextBox ID="txt_clUserId" runat="server" class="form-control" placeholder="Client ID"></asp:TextBox>
                    </div>
                    <div class="col-md-8">
                        <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
                        <asp:TextBox ID="txt_clCompName" runat="server" class="form-control" placeholder="Company Name"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label2" runat="server" Text="Client Name"></asp:Label>
                        <asp:TextBox ID="txt_clName" runat="server" class="form-control" placeholder="Client Name"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label3" runat="server" Text="Client Email"></asp:Label>
                        <asp:TextBox ID="txt_clEmail" runat="server" class="form-control" placeholder="Client Email"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label4" runat="server" Text="Client Mobile"></asp:Label>
                        <asp:TextBox ID="txt_clMobile" runat="server" class="form-control" placeholder="Client Mobile"></asp:TextBox>
                    </div>
                    <div class="col-8">
                        <asp:Label ID="Label5" runat="server" Text="Client Address"></asp:Label>
                        <asp:TextBox ID="txt_clAddress" runat="server" class="form-control" placeholder="Client Address"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                        <asp:TextBox ID="txt_clCity" runat="server" class="form-control" placeholder="City"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
                        <asp:TextBox ID="txt_clState" runat="server" class="form-control" placeholder="State"></asp:TextBox>
                    </div>
                    <div class="col-2">
                        <asp:Button ID="btn_clInsert" class="fetchBtn" runat="server" Text="Insert" OnClick="btn_clInsert_Click" />
                    </div>
                    <div class="col-2">
                        <asp:Button ID="btn_clUpdate" class="fetchBtn" runat="server" Text="Update" OnClick="btn_clUpdate_Click" />
                    </div>
                    <div class="col-2">
                        <asp:Button ID="btn_clDelete" class="fetchBtn" runat="server" Text="Delete" OnClick="btn_clDelete_Click" />
                    </div>
                    <div class="col-1 mb-5">
                        <asp:Button ID="btn_clBack" class="fetchBtn" runat="server" Text="Back" />
                    </div>
                </form>
            </div>
        </div>
    </div>


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>
                        Copyright © 2023 FlashMedia Co., Ltd. All Rights Reserved. 
          <br />
                        Design: <a href="#" target="_parent" title="Flash Media">Raj Vishwanathan</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>


    <!-- Scripts -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/animation.js"></script>
    <script src="assets/js/imagesloaded.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="Scripts/toastr.js"></script>

</body>
</html>
