Public Class TambahMahasiswa
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Unnamed1_Click(sender As Object, e As EventArgs) Handles btnTambah.Click
        If Not Request.Form("btnTambah") Is Nothing Then
            SqlDataSource4.Insert()
            Response.Redirect("Mahasiswa.aspx")
        End If
    End Sub
End Class