<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditProdi.aspx.vb" Inherits="SimbaApp.EditProdi" %>

<!--#include file="~/View/Layout/Admin_header.html"-->
</div>
      <!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Edit Dosen Pembimbing</h1>
        </div>

          <div class="row justify-content">
        <div class="col-md-12 ">
            <div class="card">
                <div class="card-body">
                <form runat="server"  novalidate="">
                        <div class="form-group">
                            <label for="nip">Kode Prodi</label>
                            <input type="text" name="kode" runat="server" value="" class="form-control" id="kode_prodi" readonly placeholder="Kode Prodi">   
                        </div>

                        <div class="form-group">
                            <label for="nama">Nama Prodi</label>
                            <input type="text" name="kode" runat="server" value="" class="form-control" id="nama" placeholder="Nama Prodi">
                        </div>

                     <asp:Button runat="server" class="btn btn-danger float-right" id="btnEdit" Text="Edit Prodi" OnClick="Unnamed1_Click" />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [prodi] WHERE [kode_prodi] = @kode_prodi" InsertCommand="INSERT INTO [prodi] ([kode_prodi], [nama]) VALUES (@kode_prodi, @nama)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [prodi]" UpdateCommand="UPDATE [prodi] SET [nama] = @nama WHERE [kode_prodi] = @kode_prodi">
                            <DeleteParameters>
                                <asp:Parameter Name="kode_prodi" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="kode_prodi" Type="Decimal" />
                                <asp:Parameter Name="nama" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:FormParameter FormField="nama" Name="nama" Type="String" />
                                <asp:FormParameter FormField="kode_prodi" Name="kode_prodi" Type="Decimal" />
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