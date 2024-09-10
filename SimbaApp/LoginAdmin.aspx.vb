Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class LoginAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("simba").ConnectionString)
        con.Open()
        Dim cmd As New SqlCommand("select * from admin where email =@email and password=@password", con)
        cmd.Parameters.AddWithValue("@email", txtEmail.Value)
        cmd.Parameters.AddWithValue("@password", txtPassword.Value)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()

        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            Session("email") = txtEmail.Value
            Response.Redirect("Dashboard_admin.aspx")
        Else
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>")
        End If
    End Sub
End Class