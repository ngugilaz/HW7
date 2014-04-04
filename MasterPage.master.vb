
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Lbl_date.Text = DateTime.Now.ToLongDateString

        Lbl_year.text = DateTime.Now.Year
    End Sub



End Class

