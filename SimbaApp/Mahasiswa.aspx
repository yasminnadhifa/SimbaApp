<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mahasiswa.aspx.vb" Inherits="SimbaApp.Mahasiswa" %>

<!--#include file="~/View/Layout/Admin_header.html"-->

<!-- Main Content -->
<div class="main-content">

    <section class="section">
        <div class="section-header">
            <h1>Data Mahasiswa</h1>
        </div>

        <div class="card shadow mb-4">
            <div class="card-body">
                <form id="form1" runat="server">
                <div style="margin: 10px;">
                    <a href="TambahMahasiswa.aspx" class="btn btn-danger">Tambah Mahasiswa</a>
                </div>
                <div class="table-responsive">
              <asp:Repeater ID="RptTampilPengajuan" runat="server">
                  <HeaderTemplate>
                    <table class="table table-bordered table-md">
                        <thead>
                            <tr>
                                <th>NIM</th>
                                <th>NIP Dosen</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Prodi</th>
                                <th>No Telp</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            </HeaderTemplate>
												<ItemTemplate>

                            <tr>
                                <td ><asp:Label ID="NIM" runat="server" Text='<%# Eval("NIM") %>' /></td>
                                <td><%#Eval("nip") %></td>
                                <td><%#Eval("nama") %></td>
                                <td><%#Eval("email") %></td>
                                <td><%#Eval("password") %></td>
                                <td><%#Eval("prodi") %></td>
                                <td><%#Eval("no_hp") %></td>
                                <td>
                                    <a href="EditMahasiswa.aspx?Parking_Name=<%#Eval("NIM")%>" class="badge badge-info">Edit</a>
                              
		                              <asp:linkbutton  runat="server"  OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" commandargument='<%# Eval("NIM") %>'
			                        commandname="Delete" text="Delete" OnClick="DeleteDosen" class="badge badge-warning" />
                                </td>
                            </tr>
                            	</ItemTemplate>
												<FooterTemplate>
                    </tbody>
                    </table>
                       </FooterTemplate>
						</asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [mahasiswa] WHERE [NIM] = @NIM" InsertCommand="INSERT INTO [mahasiswa] ([NIM], [prodi], [nama], [email], [password], [no_hp], [nip]) VALUES (@NIM, @prodi, @nama, @email, @password, @no_hp, @nip)" SelectCommand="SELECT * FROM [mahasiswa]" UpdateCommand="UPDATE [mahasiswa] SET [prodi] = @prodi, [nama] = @nama, [email] = @email, [password] = @password, [no_hp] = @no_hp, [nip] = @nip WHERE [NIM] = @NIM">
                        <DeleteParameters>
                            <asp:FormParameter FormField="NIM" Name="NIM" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NIM" Type="Decimal" />
                            <asp:Parameter Name="prodi" Type="String" />
                            <asp:Parameter Name="nama" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="no_hp" Type="String" />
                            <asp:Parameter Name="nip" Type="Decimal" />
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
                </div>
                        </form>
            </div>
        </div>
    </section>

</div>
<!--#include file="~/View/Layout/Admin_footer.html"-->