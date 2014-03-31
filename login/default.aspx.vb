
Partial Class login_default
    Inherits System.Web.UI.Page

    'set login cursor to be automatically ready for the user to enter username 
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub
End Class
