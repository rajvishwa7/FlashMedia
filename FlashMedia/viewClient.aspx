<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewClient.aspx.cs" Inherits="FlashMedia.viewClient" %>

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

    <style>
        .grid1 {
            margin-right: auto;
            margin-left: auto;
        }
    </style>

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
                            <%--<li class="scroll-to-section"><a href="client.aspx">Client</a></li>--%>
                            <li class="scroll-to-section"><a href="contact.aspx">Contact</a></li>
                            <li class="scroll-to-section btn_logSig">
                                <div class="border-first-button"><a href="account.aspx">LogOut</a></div>
                                <div class="border-first-button"><a href="client.aspx">Client</a></div>
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
                        <h2 class="text-primary">Flash Media Client Details</h2>

                        <div class="line-dec"></div>
                    </div>
                </div>
                <form id="contact" runat="server" method="post" class="row g-3 justify-content-center">
                    <asp:GridView ID="grd_fetch" CssClass="grid1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" ShowFooter="True">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <div class="col-2 ">
                        <asp:Button ID="btn_clFetch" class="fetchBtn" runat="server" Text="Fetch" OnClick="btn_clFetch_Click" />
                    </div>
                    <div class="col-3">
                        <asp:TextBox ID="txt_searchBox" runat="server" placeholder="Search"></asp:TextBox>
                    </div>
                    <div class="col-3 mb-5">
                        <asp:Button ID="btn_clSearch" class="fetchBtn" runat="server" Text="Search" OnClick="btn_clSearch_Click" />
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
