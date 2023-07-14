<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="FlashMedia.signup" %>

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

    <form method="post" action="signup.aspx" runat="server">

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
                                    <div class="border-first-button"><a href="account.aspx">Login</a></div>
                                    <div class="border-first-button"><a href="signup.aspx">Sign Up</a></div>
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


        <section class="vh-100 gradient-custom mt-4">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body px-5 py-3 text-center">

                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase text-info">Sign Up</h2>
                                    <p class="text-white-50 mb-5">Sign Up for Awesome Digital Experience!</p>

                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txt_sName" placeholder="Enter Your Name" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Must Be Entered" ForeColor="OrangeRed" ControlToValidate="txt_sName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <%--<input type="text" id="typeNameX" placeholder="Enter Your Name" class="form-control form-control-lg" />--%>
                                    </div>

                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txt_sEmail" placeholder="Enter Your Email" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Must Be Entered" ForeColor="OrangeRed" ControlToValidate="txt_sEmail" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <%--<input type="email" id="typeEmailX" placeholder="Enter Your Email" class="form-control form-control-lg" />--%>
                                    </div>

                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txt_sPassword" placeholder="Enter Your Password" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Must Be Entered" ForeColor="OrangeRed" ControlToValidate="txt_sPassword" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <%--<input type="password" id="typePasswordX" placeholder="Enter Your Password" class="form-control form-control-lg" />--%>
                                    </div>

                                    <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

                                    <asp:Button ID="btn_signup" class="btn btn-outline-light btn-lg px-5 text-info fw-bold" runat="server" Text="Sign Up" OnClick="btn_signup_Click" />
                                    <%--<button class="btn btn-outline-light btn-lg px-5 text-info" type="submit">Sign Up</button>--%>
                                </div>

                                <div>
                                    <p class="mb-0">
                                        Already have an account? <a href="account.aspx" class="text-warning fw-bold">Login</a>
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


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

    </form>
</body>
</html>
