Imports System.Data.SqlClient

Public Class EditProdi
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Parking_Name = Request.QueryString("Parking_Name")

        Dim koneksi As New SqlConnection
        Dim xDataset As New DataSet
        Dim xCommand As New SqlCommand
        Dim xCommand2 As New SqlCommand
        Dim xReader As SqlDataReader
        Dim strSql As String

        koneksi.ConnectionString =
          "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=simba;Integrated Security=True"
        koneksi.Open()
        'data bimbingan
        strSql = "select * from prodi where kode_prodi='" + Parking_Name + "'"


        'baca data bimbingan
        xCommand.Connection = koneksi
        xCommand.CommandText = strSql
        xCommand.CommandType = CommandType.Text

        xReader = xCommand.ExecuteReader()

        'data_bimbingan.DataBind()

        xReader.Read()
        kode_prodi.Value = Parking_Name

        nama.Value = xReader.Item("nama")
        xReader.Close()

        koneksi.Close()




    End Sub

    Protected Sub Unnamed1_Click(sender As Object, e As EventArgs)
        If Not Request.Form("btnEdit") Is Nothing Then
            SqlDataSource1.Update()
            Response.Redirect("Prodi.aspx")
        End If
    End Sub


End Class