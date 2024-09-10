Imports System.Data.SqlClient

Public Class Bimbingan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindRepeater()
        End If
    End Sub
    Private Sub BindRepeater()
        Dim constr As String = ConfigurationManager.ConnectionStrings("simba").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("SELECT * FROM bimbingan", con)
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
        Dim customerId As Integer = Integer.Parse(TryCast(TryCast(sender, LinkButton).NamingContainer.FindControl("NIP"), Label).Text)
        Dim constr As String = ConfigurationManager.ConnectionStrings("simba").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("DELETE FROM bimbingan WHERE id_bimbingan = @id_bimbingan", con)
                cmd.Parameters.AddWithValue("@id_bimbingan", customerId)
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using

        Me.BindRepeater()
    End Sub
End Class