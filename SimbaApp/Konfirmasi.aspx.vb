
Imports System.Data.SqlClient
Public Class Konfirmasi
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim Parking_Name = Request.QueryString("Parking_Name")
        Dim Parking_Cost = Request.QueryString("ParkingCost")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand
        Dim xCommand2 As New SqlCommand
        Dim xReader As SqlDataReader
        Dim xReader2 As SqlDataReader
        Dim strSql As String
        Dim strSql2 As String

        koneksi.ConnectionString =
          "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=simba;Integrated Security=True"
        koneksi.Open()
        'data bimbingan
        strSql = "select *from bimbingan where id_bimbingan=" + Parking_Name
        strSql2 = "select * from mahasiswa where NIM=" + Parking_Cost

        'baca data bimbingan
        xCommand.Connection = koneksi
        xCommand.CommandText = strSql
        xCommand.CommandType = CommandType.Text

        xReader = xCommand.ExecuteReader()

        'data_bimbingan.DataBind()

        xReader.Read()
        nim.Value = Parking_Cost
        tujuan.Value = xReader.Item("tujuan")
        bab.Value = xReader.Item("bab_TA")
        pesan.Value = xReader.Item("pesan_mahasiswa")
        jadwal.Value = xReader.Item("jadwal")

        xReader.Close()
        'baca data mahasiswa
        xCommand2.Connection = koneksi
        xCommand2.CommandText = strSql2
        xCommand2.CommandType = CommandType.Text

        xReader2 = xCommand2.ExecuteReader()
        xReader2.Read()
        name.Value = xReader2.Item("nama")

        xReader2.Close()

        koneksi.Close()

    End Sub

    Protected Sub Unnamed1_Click(sender As Object, e As EventArgs)
        Dim Parking_Name = Request.QueryString("Parking_Name")
        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand

        Dim xAdapter As New SqlDataAdapter
        Dim strSql As String

        koneksi.ConnectionString =
        "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=simba;Integrated Security=True"
        koneksi.Open()


        strSql = "UPDATE bimbingan SET status='" + status.Value + "',pesan_dosen='" + pesan_dosen.Value + "' where id_bimbingan=" + Parking_Name

        xCommand.Connection = koneksi
        xCommand.CommandText = strSql
        xCommand.ExecuteNonQuery()




        koneksi.Close()


        Response.Redirect("Pengajuan.aspx")
    End Sub


End Class