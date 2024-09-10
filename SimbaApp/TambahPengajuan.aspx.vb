Imports System.Data.SqlClient

Public Class TambahPengajuan
    Inherits System.Web.UI.Page

    Dim nim As String
    Dim nama As String
    Dim nip As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Parking_Name = Session("session_email")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim strSql As String

        koneksi.ConnectionString =
          "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=simba;Integrated Security=True"
        koneksi.Open()
        strSql = "select bimbingan.*,mahasiswa.nama from bimbingan INNER JOIN mahasiswa ON bimbingan.NIM=mahasiswa.NIM JOIN DosenPembimbing ON bimbingan.NIP=DosenPembimbing.NIP WHERE DosenPembimbing.email = '" + Parking_Name + "'"
        strSql = "SELECT NIM, nama, nip FROM mahasiswa WHERE email = '" + Parking_Name + "'"

        Dim xCommand As SqlCommand = koneksi.CreateCommand()
        xCommand.CommandText = strSql
        Dim xReader As SqlDataReader = xCommand.ExecuteReader()
        xReader.Read()

        nim = xReader.GetValue(0)
        nama = xReader.GetValue(1)
        nip = xReader.GetValue(2)

        sat.Text = nama
        sat2.Text = nip
        sat3.Text = nim

        koneksi.Close()

    End Sub

    Protected Sub Unnamed1_Click(sender As Object, e As EventArgs) Handles btnTambah.Click
        If Not Request.Form("btnTambah") Is Nothing Then
            SqlDataSource1.Insert()
            Response.Redirect("PengajuanMahasiswa.aspx")
        End If
    End Sub


End Class