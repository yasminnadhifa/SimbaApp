<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Prodi.aspx.vb" Inherits="SimbaApp.Prodi" %>

<!--#include file="~/View/Layout/Admin_header.html"-->

<!-- Main Content -->
<div class="main-content">

    <section class="section">
        <div class="section-header">
            <h1>Data Program Studi</h1>
        </div>

        <div class="card shadow mb-4">
            <div class="card-body">
                <form id="form1" runat="server">
                <div style="margin: 10px;">
                    <a href="TambahProdi.aspx" class="btn btn-danger">Tambah Prodi</a>
                </div>
                <div class="table-responsive">
              <asp:Repeater ID="RptTampilPengajuan" runat="server">
                  <HeaderTemplate>
                    <table class="table table-bordered table-md">
                        <thead>
                            <tr>
                                <th>Kode Prodi</th>
                                <th>Nama Prodi</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            </HeaderTemplate>
												<ItemTemplate>

                            <tr>
                                <td ><asp:Label ID="kode_prodi" runat="server" Text='<%# Eval("kode_prodi") %>' /></td>
                                <td><%#Eval("nama") %></td>
                                <td>
                                    <a href="EditProdi.aspx?Parking_Name=<%#Eval("kode_prodi")%>" class="badge badge-info">Edit</a>
                              
		                              <asp:linkbutton  runat="server"  OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" commandargument='<%# Eval("kode_prodi") %>'
			                        commandname="Delete" text="Delete" OnClick="DeleteDosen" class="badge badge-warning" />
                                </td>
                            </tr>
                            	</ItemTemplate>
												<FooterTemplate>
                    </tbody>
                    </table>
                       </FooterTemplate>
						</asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simba %>" DeleteCommand="DELETE FROM [prodi] WHERE [kode_prodi] = @kode_prodi" InsertCommand="INSERT INTO [prodi] ([kode_prodi], [nama]) VALUES (@kode_prodi, @nama)" SelectCommand="SELECT * FROM [prodi]" UpdateCommand="UPDATE [prodi] SET [nama] = @nama WHERE [kode_prodi] = @kode_prodi">
                        <DeleteParameters>
                            <asp:FormParameter FormField="kode_prodi" Name="kode_prodi" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="kode_prodi" Type="Decimal" />
                            <asp:Parameter Name="nama" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nama" Type="String" />
                            <asp:Parameter Name="kode_prodi" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </div>
                        </form>
            </div>
        </div>
    </section>

</div>
<!--#include file="~/View/Layout/Admin_footer.html"-->