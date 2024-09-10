Imports System.Data.SqlClient

Public Class PengajuanMahasiswa
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Parking_Name = Session("session_email")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand
        Dim xReader As SqlDataReader
        Dim strSql As String
        Label1.Text = Session("session_email")


        koneksi.ConnectionString =
          "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=simba;Integrated Security=True"
        koneksi.Open()
        strSql = "select bimbingan.* , mahasiswa.nama
                    from bimbingan INNER JOIN mahasiswa ON bimbingan.NIM=mahasiswa.NIM 
                    JOIN DosenPembimbing ON bimbingan.NIP=DosenPembimbing.NIP 
                    WHERE mahasiswa.email = '" + Parking_Name + "'"

        xCommand.Connection = koneksi
        xCommand.CommandText = strSql
        xCommand.CommandType = CommandType.Text


        xReader = xCommand.ExecuteReader()
        RptTampilPengajuan.DataSource = xReader
        RptTampilPengajuan.DataBind()
        xReader.Close()
        koneksi.Close()
    End Sub

End Class