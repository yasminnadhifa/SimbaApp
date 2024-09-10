<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Konfirmasi.aspx.vb" Inherits="SimbaApp.Konfirmasi" %>

<!--#include file="~/View/Layout/User_header.html"-->
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
                                <h1 data-animation="bounceIn" data-delay="0.2s">Form Konfirmasi</h1>
                                <!-- breadcrumb Start-->
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <h4 data-animation="bounceIn" data-delay="0.2s">Silahkan konfirmasi status bimbingan mahasiswa</h4>
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
		<!--? Start Sample Area -->
    <!--?  Contact Area start  -->
    <section class="contact-section">
        <div class="container">
           
            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Detail Pengajuan</h2>
                </div>
                <div class="col-lg-8">
                    <form class="form-contact contact_form" runat="server"  novalidate="">
                        <div class="row">
                            
                            <div class="col-sm-6">
                                                                 
                                <div class="form-group">
                                       <label>Nama Mahasiswa: </label>
                                    <input class="form-control valid" name="name" id="name" type="text" runat="server"   readonly placeholder="Nama Mahasiswa">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                       <label>NIM Mahasiswa: </label>
                                    <input class="form-control valid" name="name" id="nim" runat="server" type="text" value="2002222" readonly placeholder="NIM Mahasiswa">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                       <label>Tujuan Pengajuan: </label>
                                    <input class="form-control valid" name="name" id="tujuan" runat="server" type="text" value="Bimbingan TA untuk revisi BAB 2" readonly placeholder="Tujuan Mahasiswa">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                       <label>Bab TA yang ingin dilakukan bimbingan : </label>
                                    <input class="form-control valid" name="name" id="bab" runat="server" type="text" value="BAB 2" readonly placeholder="BAB TA">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                       <label>Pesan dari Mahasiswa: </label>
                                    <input class="form-control valid" name="name" id="pesan" runat="server" type="text" value="Saya masih ada kebingungan di landasan teori bu" readonly placeholder="Pesan Mahasiswa">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                       <label>Pengajuan Jadwal Bimbingan: </label>
                                    <input class="form-control valid" name="name" id="jadwal" runat="server" type="text" value="Rabu, 3 Januari 2022" readonly placeholder="Jadwal">
                                </div>
                            </div>
                                            <div class="col-12">
                    <h2 class="contact-title">Silahkan Konfirmasi status pengajuan bimbingan</h2>
                </div>

                            <div class="col-12">

                                                        <div class="row">
                            <div class="col-10">
                                    <label>Status konfirmasi: </label>
</div>
                            <div class="col-10">
                                        <div >
                                            <select name="status" id="status" runat="server">
                                                <option value="">Change Status</option>
                                                <option value="diterima">Diterima</option>
                                                <option value="ditolak">Tidak diterima</option>
                                                <option value="proses">Sedang Proses</option>
                                                <option value="selesai">Selesai</option>
                                            </select>
                                        </div>
                                       </div>

                                </div>
                                </div>
                            <br />
                            <div class="col-12" style="margin-top:20px">
                                <div class="form-group">
                                                                        <label>Pesan Dosen: </label>
                                    <input class="form-control valid" name="name" id="pesan_dosen" type="text" runat="server" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Message'" placeholder="Pesan Dosen">
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <asp:Button runat="server" Text="Send" CssClass="button button-contactForm boxed-btn" OnClick="Unnamed1_Click" />
                        </div>
                    </form>
                </div>
                
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Area End -->
</body>


<!--#include file="~/View/Layout/Utama_footer.html"-->