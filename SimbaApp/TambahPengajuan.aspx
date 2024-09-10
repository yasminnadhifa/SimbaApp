<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TambahPengajuan.aspx.vb" Inherits="SimbaApp.TambahPengajuan" %>

<!--#include file="~/View/Layout/User_header2.html"-->
<main>
    <!--? slider Area Start-->
    <section class="slider-area slider-area2">
        <div class="slider-active">
            <!-- Single Slider -->
            <div class="single-slider slider-height2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-11 col-md-12">
                            <div class="hero__caption hero__caption2">
                                <h1 data-animation="bounceIn" data-delay="0.2s">Form Pengajuan</h1>
                                <!-- breadcrumb Start-->
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="HalamanUtama2.aspx">Home</a></li>
                                        <li class="breadcrumb-item"><a href="#">Form Pengajuan</a></li>
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
                    <h2 class="contact-title">Form Pengajuan Bimbingan</h2>
                </div>
                <div class="col-lg-8">
              <form class="form-contact contact_form" runat="server"  novalidate="">
                        <div class="row">
                            <asp:Label runat="server" Text="" id="sat" visible="False"></asp:Label>
                            <asp:Label runat="server" Text="" id="sat2" visible="False"></asp:Label>
                            <asp:Label runat="server" Text="" id="sat3" visible="False"></asp:Label>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Tujuan Bimbingan: </label>
                                    <input runat="server" class="form-control valid" name="name" id="txtTujuan" type="text"  placeholder="Tujuan Mahasiswa">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Bab TA yang ingin dibimbing: </label>
                                    <input runat="server" class="form-control valid" name="name" id="txtBab" type="text"  placeholder="BAB TA">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Pesan Mahasiswa: </label>
                                    <input runat="server" class="form-control valid" name="name" id="txtPesan" type="text"  placeholder="Pesan Mahasiswa">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Jadwal Bimbingan: </label>
                                    <input runat="server" class="form-control valid" name="name" id="txtJadwal" type="date"  placeholder="Jadwal">
                                </div>
                            </div>

                        </div>
                        <div class="form-group mt-3">
                            <asp:Button runat="server" class="button button-contactForm boxed-btn" id="btnTambah" Text="Tambah" OnClick="Unnamed1_Click" />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [bimbingan] WHERE [id_bimbingan] = @id_bimbingan" InsertCommand="INSERT INTO [bimbingan] ([NIM], [NIP], [bab_TA], [pesan_dosen], [pesan_mahasiswa], [status], [jadwal], [tujuan],[nama]) VALUES (@NIM, @NIP, @bab_TA, @pesan_dosen, @pesan_mahasiswa, @status, @jadwal, @tujuan, @nama)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [bimbingan]" UpdateCommand="UPDATE [bimbingan] SET [NIM] = @NIM, [NIP] = @NIP, [bab_TA] = @bab_TA, [pesan_dosen] = @pesan_dosen, [pesan_mahasiswa] = @pesan_mahasiswa, [status] = @status, [jadwal] = @jadwal, [tujuan] = @tujuan, [nama] = @nama WHERE [id_bimbingan] = @id_bimbingan">
                                <DeleteParameters>
                                    <asp:Parameter Name="id_bimbingan" Type="Decimal" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="sat3" Name="NIM" PropertyName="Text" Type="Decimal" />
                                    <asp:ControlParameter ControlID="sat2" Name="NIP" PropertyName="Text" Type="Decimal" />
                                    <asp:FormParameter FormField="txtBab" Name="bab_TA" Type="String" />
                                    <asp:Parameter Name="pesan_dosen" Type="String" DefaultValue="Belum ada pesan" />
                                    <asp:FormParameter FormField="txtPesan" Name="pesan_mahasiswa" Type="String" />
                                    <asp:Parameter Name="status" Type="String" DefaultValue="Menunggu.." />
                                    <asp:FormParameter FormField="txtJadwal" Name="jadwal" Type="String" />
                                    <asp:FormParameter FormField="txtTujuan" Name="tujuan" Type="String" />
                                    <asp:ControlParameter ControlID="sat" Name="nama" PropertyName="Text" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NIM" Type="Decimal" />
                                    <asp:Parameter Name="NIP" Type="Decimal" />
                                    <asp:Parameter Name="bab_TA" Type="String" />
                                    <asp:Parameter Name="pesan_dosen" Type="String" />
                                    <asp:Parameter Name="pesan_mahasiswa" Type="String" />
                                    <asp:Parameter Name="status" Type="String" />
                                    <asp:Parameter Name="jadwal" Type="String" />
                                    <asp:Parameter Name="tujuan" Type="String" />
                                    <asp:Parameter Name="nama" Type="String" />
                                    <asp:Parameter Name="id_bimbingan" Type="Decimal" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </form>
                </div>

            </div>
        </div>
        </div>
    </section>
    <!-- Contact Area End -->
</main>


<!--#include file="~/View/Layout/Utama_footer.html"-->


