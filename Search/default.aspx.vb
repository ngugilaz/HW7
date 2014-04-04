
Partial Class Search_default
    Inherits System.Web.UI.Page

    Protected Sub src_tB_TextChanged(sender As Object, e As EventArgs) Handles src_tB.TextChanged
        'declare variable
        Dim seacrhWord As String
        'set variable equal to the SQL statement

        seacrhWord = "select * from players where (fName like '%" + src_tB.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = seacrhWord



    End Sub


    Protected Sub btn2_TextChanged(sender As Object, e As EventArgs) Handles btn2.TextChanged
        'declare variable
        Dim seacrhWord As String
        'set variable equal to the SQL statement

        seacrhWord = "select * from players where (fName like '%" + src_tB.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = seacrhWord



    End Sub
End Class
