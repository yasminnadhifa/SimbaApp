<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TambahDosen.aspx.vb" Inherits="SimbaApp.TambahDosen" %>

<!--#include file="~/View/Layout/Admin_header.html"-->
</div>
      <!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Tambah Dosen Pembimbing</h1>
        </div>

          <div class="row justify-content">
        <div class="col-md-12 ">
            <div class="card">
                <div class="card-body">
                <form runat="server" >
                        <div class="form-group">
                            <label for="nip">NIP</label>
                            <input type="text" name="NIP" runat="server" class="form-control" id="NIP" placeholder="NIP">   
                        </div>

                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" name="nama" runat="server"  class="form-control" id="nama" placeholder="nama">
                        </div>

                     <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" name="email" runat="server" class="form-control" id="email" placeholder="email">
                        </div>

                     <div class="form-group">
                            <label for="password">Password</label>
                            <input type="text" name="password"  runat="server" class="form-control" id="password" placeholder="password">
                        </div>

                        <div class="form-group">
                            <label for="kategori">Program Studi</label>
                            <asp:DropDownList id="prodi" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="nama" DataValueField="nama"></asp:DropDownList>


                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" SelectCommand="SELECT [nama] FROM [prodi]"></asp:SqlDataSource>


                        </div>

                     <div class="form-group">
                            <label for="konsentrasi">Konsentrasi</label>
                            <input type="text" runat="server" name="konsentrasi"  class="form-control" id="konsentrasi" placeholder="konsentrasi">
                        </div>

                     <div class="form-group">
                            <label for="no_telp">No.Telepon</label>
                            <input type="text" runat="server" name="no_telp"  class="form-control" id="no_hp" placeholder="no_telp">
                        </div>

                        <asp:Button runat="server" id="btnTambah" class="btn btn-danger float-right" Text="Tambah Dosen" OnClick="Unnamed1_Click" />

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [DosenPembimbing] WHERE [NIP] = @NIP" InsertCommand="INSERT INTO [DosenPembimbing] ([NIP], [prodi], [nama], [email], [password], [no_hp], [konsentrasi]) VALUES (@NIP, @prodi, @nama, @email, @password, @no_hp, @konsentrasi)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [DosenPembimbing]" UpdateCommand="UPDATE [DosenPembimbing] SET [prodi] = @prodi, [nama] = @nama, [email] = @email, [password] = @password, [no_hp] = @no_hp, [konsentrasi] = @konsentrasi WHERE [NIP] = @NIP">
                            <DeleteParameters>
                                <asp:Parameter Name="NIP" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:FormParameter FormField="NIP" Name="NIP" Type="Decimal" />
                                <asp:FormParameter FormField="prodi" Name="prodi" Type="String" />
                                <asp:FormParameter FormField="nama" Name="nama" Type="String" />
                                <asp:FormParameter FormField="email" Name="email" Type="String" />
                                <asp:FormParameter FormField="password" Name="password" Type="String" />
                                <asp:FormParameter FormField="no_hp" Name="no_hp" Type="String" />
                                <asp:FormParameter FormField="konsentrasi" Name="konsentrasi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="prodi" Type="String" />
                                <asp:Parameter Name="nama" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="no_hp" Type="String" />
                                <asp:Parameter Name="konsentrasi" Type="String" />
                                <asp:Parameter Name="NIP" Type="Decimal" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                      </form>
                </div>
            </div>
        </div>
        </section>
      </div>
<!--#include file="~/View/Layout/Admin_footer.html"-->