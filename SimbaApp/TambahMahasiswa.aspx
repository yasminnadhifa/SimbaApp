<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TambahMahasiswa.aspx.vb" Inherits="SimbaApp.TambahMahasiswa" %>

<!--#include file="~/View/Layout/Admin_header.html"-->
</div>
      <!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Tambah Mahasiswa</h1>
        </div>

          <div class="row justify-content">
        <div class="col-md-12 ">
            <div class="card">
                <div class="card-body">
                <form runat="server" >
                        <div class="form-group">
                            <label for="nip">NIM</label>
                            <input type="text" name="NIM" runat="server" class="form-control" id="NIM" placeholder="NIM">   
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
                            <label for="no_telp">No.Telepon</label>
                            <input type="text" runat="server" name="no_telp"  class="form-control" id="no_hp" placeholder="no_telp">
                        </div>
                            <div class="form-group">
                            <label for="kategori">Nama Dosen</label>
                            <asp:DropDownList id="nip" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="nama" DataValueField="NIP"></asp:DropDownList>


                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" SelectCommand="SELECT [nama], [NIP] FROM [DosenPembimbing]"></asp:SqlDataSource>


                        </div>
                        <asp:Button runat="server" id="btnTambah" class="btn btn-danger float-right" Text="Tambah Mahasiswa" OnClick="Unnamed1_Click" />

                        <br />
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [mahasiswa] WHERE [NIM] = @NIM" InsertCommand="INSERT INTO [mahasiswa] ([NIM], [prodi], [nama], [email], [password], [no_hp], [nip]) VALUES (@NIM, @prodi, @nama, @email, @password, @no_hp, @nip)" SelectCommand="SELECT * FROM [mahasiswa]" UpdateCommand="UPDATE [mahasiswa] SET [prodi] = @prodi, [nama] = @nama, [email] = @email, [password] = @password, [no_hp] = @no_hp, [nip] = @nip WHERE [NIM] = @NIM" ProviderName="System.Data.SqlClient">
                            <DeleteParameters>
                                <asp:Parameter Name="NIM" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:FormParameter FormField="NIM" Name="NIM" Type="Decimal" />
                                <asp:FormParameter FormField="prodi" Name="prodi" Type="String" />
                                <asp:FormParameter FormField="nama" Name="nama" Type="String" />
                                <asp:FormParameter FormField="email" Name="email" Type="String" />
                                <asp:FormParameter FormField="password" Name="password" Type="String" />
                                <asp:FormParameter FormField="no_hp" Name="no_hp" Type="String" />
                                <asp:FormParameter FormField="nip" Name="nip" Type="Decimal" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="prodi" Type="String" />
                                <asp:Parameter Name="nama" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="no_hp" Type="String" />
                                <asp:Parameter Name="nip" Type="Decimal" />
                                <asp:Parameter Name="NIM" Type="Decimal" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                      </form>
                </div>
            </div>
        </div>
        </section>
      </div>
<!--#include file="~/View/Layout/Admin_footer.html"-->