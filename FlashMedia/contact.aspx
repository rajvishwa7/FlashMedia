<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="FlashMedia.contact" %>

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
                            <li class="scroll-to-section"><a href="#">About</a></li>
                            <li class="scroll-to-section"><a href="#">Services</a></li>
                            <li class="scroll-to-section"><a href="#">Projects</a></li>
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

    <div id="contact" class="contact-us section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                        <h6>Contact Us</h6>
                        <h4>Get In Touch With Us <em>Now</em></h4>
                        <div class="line-dec"></div>
                    </div>
                </div>
                <div class="col-lg-12 wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.25s">
                    <form id="contact" action="contact.aspx" method="post" runat="server">
                        <div class="row">
                            <div class="col-lg-5">
                                <div id="map">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248756.07885882704!2d80.20901174999999!3d13.04752545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a5265ea4f7d3361%3A0x6e61a70b6863d433!2sChennai%2C%20Tamil%20Nadu!5e0!3m2!1sen!2sin!4v1685348380305!5m2!1sen!2sin" width="100%" height="636px" frameborder="0" style="border: 0" allowfullscreen=""></iframe>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="fill-form">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="info-post">
                                                <div class="icon">
                                                    <img src="assets/images/phone-icon.png" alt="" />
                                                    <a href="#">007-007-007</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="info-post">
                                                <div class="icon">
                                                    <img src="assets/images/email-icon.png" alt="" />
                                                    <a href="#">flash@epire.com</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="info-post">
                                                <div class="icon">
                                                    <img src="assets/images/location-icon.png" alt="" />
                                                    <a href="#">Chennai, TN</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <fieldset>
                                                <asp:TextBox ID="txt_conName" placeholder="Name" runat="server"></asp:TextBox>
                                                <%--<input type="name" name="name" id="name" placeholder="Name" autocomplete="on" required>--%>
                                            </fieldset>
                                            <fieldset>
                                                <asp:TextBox ID="txt_conEmail" placeholder="Email" runat="server"></asp:TextBox>
                                                <%--<input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">--%>
                                            </fieldset>
                                            <fieldset>
                                                <asp:TextBox ID="txt_conSubject" placeholder="Subject" runat="server"></asp:TextBox>
                                                <%--<input type="subject" name="subject" id="subject" placeholder="Subject" autocomplete="on">--%>
                                            </fieldset>
                                        </div>
                                        <div class="col-lg-6">
                                            <fieldset>
                                                <asp:TextBox ID="txt_conMessage" class="form-control" TextMode="MultiLine" placeholder="Message" runat="server"></asp:TextBox>
                                                <%--<textarea id="txt_conMessage" class="form-control" cols="20" rows="2" placeholder="Message"></textarea>--%>
                                                <%--<textarea name="message" type="text" class="form-control" id="message" placeholder="Message" required=""></textarea>--%>
                                            </fieldset>
                                        </div>
                                        <div class="col-lg-12">
                                            <fieldset>
                                                <asp:Button ID="btn_sendMail" class="fetchBtn" runat="server" Text="Send Message Now" OnClick="btn_sendMail_Click" />
                                                <%--<button type="submit" id="form-submit" class="main-button ">Send Message Now</button>--%>
                                            </fieldset>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <asp:Label ID="lbl_Error" runat="server" ForeColor="Green"></asp:Label>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
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
