Imports System.Data.SqlClient

Public Class HalamanUtama
    Inherits System.Web.UI.Page
    Dim nama As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Parking_Name = Session("session_email")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim strSql As String

        koneksi.ConnectionString =
          "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=simba;Integrated Security=True"
        koneksi.Open()
        strSql = "select bimbingan.*,mahasiswa.nama from bimbingan INNER JOIN mahasiswa ON bimbingan.NIM=mahasiswa.NIM JOIN DosenPembimbing ON bimbingan.NIP=DosenPembimbing.NIP WHERE DosenPembimbing.email = '" + Parking_Name + "'"
        strSql = "SELECT nama FROM DosenPembimbing WHERE email = '" + Parking_Name + "'"

        Dim xCommand As SqlCommand = koneksi.CreateCommand()
        xCommand.CommandText = strSql
        Dim xReader As SqlDataReader = xCommand.ExecuteReader()
        xReader.Read()

        nama = xReader.GetValue(0)

        sat.Text = nama

        koneksi.Close()
    End Sub

End Class