<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard_admin.aspx.vb" Inherits="SimbaApp.Dashboard_admin" %>

<!--#include file="~/View/Layout/Admin_header.html"-->
 <!-- Main Content -->
   <div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Dashboard</h1>
        </div>
        <form id="form1" runat="server">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-primary">
                        <i class="far fa-user"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>Total Mahasiswa</h4>
                            <asp:Label runat="server" id="mahasiswa" ></asp:Label>
                        </div>
                        <div class="card-body">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-danger">
                    <i class="far fa-file"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>Total Dosen</h4>
                            <asp:Label runat="server" id="dosen" ></asp:Label>
                        </div>
                        <div class="card-body">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-warning">
                    <i class="far fa-newspaper"></i>

                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>Total Prodi</h4>
                            <asp:Label runat="server" id="prodi" ></asp:Label>
                        </div>
                        <div class="card-body">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="card card-statistic-1">
                    <div class="card-icon bg-success">
                        <i class="fas fa-circle"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>Total Pengajuan Bimbingan</h4>
                            <asp:Label runat="server" id="bimbingan" ></asp:Label>
                        </div>
                        <div class="card-body">

                        </div>
                    </div>
                </div>
            </div>
        </div>
            </form>
            </section>
        </div>

<!--#include file="~/View/Layout/Admin_footer.html"-->