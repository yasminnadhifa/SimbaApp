<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HalamanUtama.aspx.vb" Inherits="SimbaApp.HalamanUtama" %>

<!--#include file="~/View/Layout/User_header.html"-->
    <main>
        <!--? slider Area Start-->
        <section class="slider-area ">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-7 col-md-12">
                                <div class="hero__caption">
                                    <h1 data-animation="fadeInLeft" data-delay="0.2s">Selamat Datang, <asp:Label runat="server" id="sat" ForeColor="White"></asp:Label></h1>
                                    <p data-animation="fadeInLeft" data-delay="0.4s">Konfirmasi kehadiran anda pada siswa bimbingan anda!</p>
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </section>
    </main>
   
<!--#include file="~/View/Layout/Utama_footer.html"-->
