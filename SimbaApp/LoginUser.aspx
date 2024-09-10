<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginUser.aspx.vb" Inherits="SimbaApp.LoginUser" %>

<!--#include file="~/View/Layout/Utama_header.html"-->
<body>

    <!--? slider Area Start-->
    <section class="slider-area slider-area2">
        <div class="slider-active">
            <!-- Single Slider -->
            <div class="single-slider slider-height2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-11 col-md-12">
                            <div class="hero__caption hero__caption2">
                                <h1 data-animation="bounceIn" data-delay="0.2s">Login Now</h1>
                                <!-- breadcrumb Start-->
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="HalamanUtama.aspx">Home</a></li>
                                        <li class="breadcrumb-item"><a href="#">Login</a></li> 
                                    </ol>
                                </nav>
                                <!-- breadcrumb End -->
                            </div>
                        </div>
                    </div>
                </div>          
            </div>
        </div>
    </section>
    <!--?  Contact Area start  -->
    <section class="contact-section">
        <div class="container">
           
            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Login Now</h2>
                </div>
                <div class="col-lg-8">
                    <form class="form-contact contact_form" runat="server"  novalidate="">
                        <div class="row">
                            
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <input runat="server" class="form-control valid" name="email" id="txtEmail" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">

                                    </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <input runat="server" class="form-control" name="password" id="txtPassword" type="password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Password'" placeholder="Enter Password">
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <asp:Button runat="server" Text="Login" class="genric-btn primary circle" ID="btnUser" />

                        </div>
                        </form>
                </div>
                
                </div>
            </div>

    </section>
    <!-- Contact Area End -->

    <p>
&nbsp;</p>

</body>

<!--#include file="~/View/Layout/Utama_footer.html"-->

