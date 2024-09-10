Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Public Class LoginUser
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnUser_Click(sender As Object, e As EventArgs) Handles btnUser.Click
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("simba").ConnectionString)
        con.Open()
        Dim cmd As New SqlCommand("select * from DosenPembimbing where email =@email and password=@password", con)
        Dim cmd2 As New SqlCommand("select * from mahasiswa where email =@email and password=@password", con)
        cmd.Parameters.AddWithValue("@email", txtEmail.Value)
        cmd.Parameters.AddWithValue("@password", txtPassword.Value)
        Dim da As New SqlDataAdapter(cmd)

        cmd2.Parameters.AddWithValue("@email", txtEmail.Value)
        cmd2.Parameters.AddWithValue("@password", txtPassword.Value)
        Dim da2 As New SqlDataAdapter(cmd2)
        Dim dt As New DataTable()
        Dim dt2 As New DataTable()
        da.Fill(dt)
        da2.Fill(dt2)
        If dt.Rows.Count > 0 Then
            Session("session_email") = txtEmail.Value
            Response.Redirect("HalamanUtama.aspx")

        ElseIf dt2.Rows.Count > 0 Then
            Session("session_email") = txtEmail.Value
            Response.Redirect("HalamanUtama2.aspx")
        Else
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>")
        End If

    End Sub
End Class