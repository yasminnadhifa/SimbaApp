<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bimbingan.aspx.vb" Inherits="SimbaApp.Bimbingan" %>

<!--#include file="~/View/Layout/Admin_header.html"-->

<!-- Main Content -->
<div class="main-content">

    <section class="section">
        <div class="section-header">
            <h1>Data Pengajuan Bimbingan</h1>
        </div>

        <div class="card shadow mb-4">
            <div class="card-body">
                <form id="form1" runat="server">
                <div class="table-responsive">
              <asp:Repeater ID="RptTampilPengajuan" runat="server">
                  <HeaderTemplate>
                    <table class="table table-bordered table-md">
                        <thead>
                            <tr>
                                <th>Kode Bimbingan</th>
                                <th>NIM</th>
                                <th>NIP</th>
                                <th>Bab TA</th>
                                <th>Pesan Dosen</th>
                                <th>Pesan Mahasiswa</th>
                                <th>Status</th>
                                <th>Jadwal</th>
                                <th>Tujuan</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            </HeaderTemplate>
												<ItemTemplate>

                            <tr>
                                <td ><asp:Label ID="NIP" runat="server" Text='<%# Eval("id_bimbingan") %>' /></td>
                                <td><%#Eval("NIM") %></td>
                                <td><%#Eval("NIP") %></td>
                                <td><%#Eval("bab_TA") %></td>
                                <td><%#Eval("pesan_dosen") %></td>
                                <td><%#Eval("pesan_mahasiswa") %></td>
                                <td><%#Eval("status") %></td>
                                <td><%#Eval("jadwal") %></td>
                                <td><%#Eval("tujuan") %></td>
                                <td>
                              
		                              <asp:linkbutton  runat="server"  OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" commandargument='<%# Eval("id_bimbingan") %>'
			                        commandname="Delete" text="Delete" OnClick="DeleteDosen" class="badge badge-warning" />
                                </td>
                            </tr>
                            	</ItemTemplate>
												<FooterTemplate>
                    </tbody>
                    </table>
                       </FooterTemplate>
						</asp:Repeater>
                </div>
                        </form>
            </div>
        </div>
    </section>

</div>

<!--#include file="~/View/Layout/Admin_footer.html"-->
</form>

