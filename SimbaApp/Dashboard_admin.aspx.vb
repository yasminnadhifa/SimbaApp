Imports System.Data.SqlClient

Public Class Dashboard_admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim constring As String = ConfigurationManager.ConnectionStrings("simba").ConnectionString
        Using con As New SqlConnection(constring)
            Using cmd As New SqlCommand("SELECT COUNT(*) As Count FROM DosenPembimbing", con)
                cmd.CommandType = CommandType.Text
                con.Open()
                Dim o As Object = cmd.ExecuteScalar()
                If o IsNot Nothing Then
                    dosen.Text = o.ToString()
                End If
                con.Close()
            End Using

            Using cmd2 As New SqlCommand("SELECT COUNT(*) As Count FROM prodi", con)
                cmd2.CommandType = CommandType.Text
                con.Open()
                Dim o As Object = cmd2.ExecuteScalar()
                If o IsNot Nothing Then
                    prodi.Text = o.ToString()
                End If
                con.Close()
            End Using

            Using cmd3 As New SqlCommand("SELECT COUNT(*) As Count FROM bimbingan", con)
                cmd3.CommandType = CommandType.Text
                con.Open()
                Dim o As Object = cmd3.ExecuteScalar()
                If o IsNot Nothing Then
                    bimbingan.Text = o.ToString()
                End If
                con.Close()
            End Using

            Using cmd4 As New SqlCommand("SELECT COUNT(*) As Count FROM mahasiswa", con)
                cmd4.CommandType = CommandType.Text
                con.Open()
                Dim o As Object = cmd4.ExecuteScalar()
                If o IsNot Nothing Then
                    mahasiswa.Text = o.ToString()
                End If
                con.Close()
            End Using
        End Using
    End Sub
End Class