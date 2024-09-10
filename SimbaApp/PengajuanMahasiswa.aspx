<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PengajuanMahasiswa.aspx.vb" Inherits="SimbaApp.PengajuanMahasiswa" %>

<!--#include file="~/View/Layout/User_header2.html"-->


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
                                <h1 data-animation="bounceIn" data-delay="0.2s">Lihat Pengajuan</h1>
                                <!-- breadcrumb Start-->
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="HalamanUtama.aspx">Home</a></li>
                                        <li class="breadcrumb-item"><a href="Pengajuan.aspx">Pengajuan</a></li> 
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
		
		<!-- End Sample Area -->
		<!--? Start Button -->
		
								<!-- End Button -->
								<!--? Start Align Area -->
		               <form id="form1" runat="server">


								<div class="whole-wrap">
									<div class="container box_1170">

										<div class="section-top-border">
											<h1 class="mb-30">Pengajuan Bimbingan 
                                                <asp:Label ID="Label1" runat="server" visible="false" ></asp:Label>
                                            </h1>

											<asp:Repeater ID="RptTampilPengajuan" runat="server">
												<HeaderTemplate>
													<table class="table" border="0">
												<thead>
													<tr>
														<td><b>No</b></td>
														<td><b>Nama</b></td>
														<td><b>NIM</b></td>
														<td><b>NIP Dosen</b></td>
														<td><b>Tujuan</b></td>
														<td><b>BAB TA</b></td>
														<td><b>Jadwal</b></td>
														<td><b>Pesan Dosen</b></td>
														<td><b>Status</b></td>
													</tr>
												</thead>
												<tbody>
												</HeaderTemplate>
												<ItemTemplate>
																											<tr>
															<td><%#Eval("id_bimbingan") %></td>
															<td><%#Eval("nama") %></td>
															<td><%#Eval("NIM") %></td>
																												<td><%#Eval("nip") %></td>
															<td><%#Eval("tujuan") %></td>
															<td><%#Eval("bab_TA") %></td>
															<td><%#Eval("jadwal") %></td>
															<td><%#Eval("pesan_dosen") %></td>
															<td><%#Eval("status") %></td>
														</tr>
												</ItemTemplate>
												<FooterTemplate>
																							
														
												</tbody>
								
											</table>
												</FooterTemplate>
											</asp:Repeater>

										</div>

										
									</div>
								</div>
								<!-- End Align Area -->
				    </form>
								</body>

<!--#include file="~/View/Layout/Utama_footer.html"-->
