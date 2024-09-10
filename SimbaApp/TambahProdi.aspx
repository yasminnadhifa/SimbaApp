<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TambahProdi.aspx.vb" Inherits="SimbaApp.TambahProdi" %>

<!--#include file="~/View/Layout/Admin_header.html"-->
</div>
      <!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Tambah Prodi</h1>
        </div>

          <div class="row justify-content">
        <div class="col-md-12 ">
            <div class="card">
                <div class="card-body">
                <form runat="server" >
                        <div class="form-group">
                            <label for="nip">Kode Prodi</label>
                            <input type="text" name="kode_prodi" runat="server" class="form-control" id="kode_prodi" placeholder="Kode Prodi">   
                        </div>
                        <div class="form-group">
                            <label for="nip">Nama Prodi</label>
                            <input type="text" name="NIP" runat="server" class="form-control" id="nama" placeholder="Nama Prodi">   
                        </div>
                        

                        <asp:Button runat="server" id="btnTambah" class="btn btn-danger float-right" Text="Tambah Prodi" OnClick="Unnamed1_Click" />

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [prodi] WHERE [kode_prodi] = @kode_prodi" InsertCommand="INSERT INTO [prodi] ([kode_prodi], [nama]) VALUES (@kode_prodi, @nama)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [prodi]" UpdateCommand="UPDATE [prodi] SET [nama] = @nama WHERE [kode_prodi] = @kode_prodi">
                            <DeleteParameters>
                                <asp:Parameter Name="kode_prodi" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:FormParameter FormField="kode_prodi" Name="kode_prodi" Type="Decimal" />
                                <asp:FormParameter FormField="nama" Name="nama" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nama" Type="String" />
                                <asp:Parameter Name="kode_prodi" Type="Decimal" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        <br />

                      </form>
                </div>
            </div>
        </div>
        </section>
      </div>
<!--#include file="~/View/Layout/Admin_footer.html"-->