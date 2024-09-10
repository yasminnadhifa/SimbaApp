Imports System.Data.SqlClient

Public Class Prodi
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindRepeater()
        End If
    End Sub
    Private Sub BindRepeater()
        Dim constr As String = ConfigurationManager.ConnectionStrings("simba").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("SELECT * FROM prodi", con)
                Using sda As New SqlDataAdapter(cmd)
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        RptTampilPengajuan.DataSource = dt
                        RptTampilPengajuan.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub

    Protected Sub DeleteDosen(sender As Object, e As EventArgs)
        Dim customerId As Integer = Integer.Parse(TryCast(TryCast(sender, LinkButton).NamingContainer.FindControl("kode_prodi"), Label).Text)
        Dim constr As String = ConfigurationManager.ConnectionStrings("simba").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("DELETE FROM prodi WHERE kode_prodi = @kode_prodi", con)
                cmd.Parameters.AddWithValue("@kode_prodi", customerId)
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using

        Me.BindRepeater()
    End Sub
End Class