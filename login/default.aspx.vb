
Partial Class login_default
    Inherits System.Web.UI.Page
    'sets the focus automatically on username
    Protected Sub page_load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Login1.Focus()
    End Sub

End Class
