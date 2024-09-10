<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dosen.aspx.vb" Inherits="SimbaApp.Dosen" %>

<!--#include file="~/View/Layout/Admin_header.html"-->

<!-- Main Content -->
<div class="main-content">

    <section class="section">
        <div class="section-header">
            <h1>Data Dosen Pembimbing</h1>
        </div>

        <div class="card shadow mb-4">
            <div class="card-body">
                <form id="form1" runat="server">
                <div style="margin: 10px;">
                    <a href="TambahDosen.aspx" class="btn btn-danger">Tambah Dosen</a>
                </div>
                <div class="table-responsive">
              <asp:Repeater ID="RptTampilPengajuan" runat="server">
                  <HeaderTemplate>
                    <table class="table table-bordered table-md">
                        <thead>
                            <tr>
                                <th>NIP</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Prodi</th>
                                <th>Konsentrasi</th>
                                <th>No Telp</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            </HeaderTemplate>
												<ItemTemplate>

                            <tr>
                                <td ><asp:Label ID="NIP" runat="server" Text='<%# Eval("NIP") %>' /></td>
                                <td><%#Eval("nama") %></td>
                                <td><%#Eval("email") %></td>
                                <td><%#Eval("password") %></td>
                                <td><%#Eval("prodi") %></td>
                                <td><%#Eval("konsentrasi") %></td>
                                <td><%#Eval("no_hp") %></td>
                                <td>
                                    <a href="EditDosen.aspx?Parking_Name=<%#Eval("NIP")%>" class="badge badge-info">Edit</a>
                              
		                              <asp:linkbutton  runat="server"  OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" commandargument='<%# Eval("NIP") %>'
			                        commandname="Delete" text="Delete" OnClick="DeleteDosen" class="badge badge-warning" />
                                </td>
                            </tr>
                            	</ItemTemplate>
												<FooterTemplate>
                    </tbody>
                    </table>
                       </FooterTemplate>
						</asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [DosenPembimbing] WHERE [NIP] = @NIP" InsertCommand="INSERT INTO [DosenPembimbing] ([NIP], [prodi], [nama], [email], [password], [no_hp], [konsentrasi]) VALUES (@NIP, @prodi, @nama, @email, @password, @no_hp, @konsentrasi)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [DosenPembimbing]" UpdateCommand="UPDATE [DosenPembimbing] SET [prodi] = @prodi, [nama] = @nama, [email] = @email, [password] = @password, [no_hp] = @no_hp, [konsentrasi] = @konsentrasi WHERE [NIP] = @NIP">
                        <DeleteParameters>
                            <asp:FormParameter FormField="NIP" Name="NIP" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NIP" Type="Decimal" />
                            <asp:Parameter Name="prodi" Type="String" />
                            <asp:Parameter Name="nama" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="no_hp" Type="String" />
                            <asp:Parameter Name="konsentrasi" Type="String" />
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
                </div>
                        </form>
            </div>
        </div>
    </section>

</div>
<!--#include file="~/View/Layout/Admin_footer.html"-->