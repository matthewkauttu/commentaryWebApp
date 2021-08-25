Imports System.Windows.Forms
Imports Telerik.Web.UI

Partial Class _Default
    Inherits System.Web.UI.Page

    ''' <summary>
    ''' Event Handler for O Approval button click.
    ''' 
    ''' Get username of current user,
    ''' then copy O Approval message to clipboard,
    ''' then display message confirming clipboard contents have been altered correctly
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Function btnO_Click(sender As Object, e As EventArgs) As Boolean Handles btn0.Click

        Dim UserName As String
        UserName = Environ("USERNAME")

        Try
            Clipboard.SetText("Forwarded to 'O' for Approval.  Eligible per POCT")

            Return True
            'If msgRow.Style.Item("display").Equals("none") Then msgRow.Style.Item("display") = "block"
            'msgRow.Style.Item("display") = "block"
            'btn0Msg.Text = "<span style='display:block; color:darkslateblue'>O Approval note copied to clipboard</span>"
        Catch ex As Runtime.InteropServices.ExternalException
            Return False
            'msgRow.Style.Item("display") = "block"
            'btn0Msg.Text = "<span style='display:block; color:red'>The clipboard could not be cleared. It may be in use by another process. Try again in a moment.</span>"

        End Try

    End Function

    Private Sub btnMgr_Click(sender As Object, e As EventArgs) Handles btnMgr.Click

        Dim UserName As String
        UserName = Environ("USERNAME")

        Try
            Clipboard.SetText("This account is pending Manager Review.  Review again in 7 days.")

            'If msgRow.Style.Item("display").Equals("none") Then msgRow.Style.Item("display") = "block"
            msgRow.Style.Item("display") = "block"
            btnMgrMsg.Text = "<span style='display:block; color:darkslateblue'>Manager review note copied to clipboard</span>"
        Catch ex As Runtime.InteropServices.ExternalException
            msgRow.Style.Item("display") = "block"
            btnMgrMsg.Text = "<span style='display:block; color:red'>The clipboard could not be cleared. It may be in use by another process. Try again in a moment.</span>"

        End Try

    End Sub

    Private Sub btnDummy_Click(sender As Object, e As EventArgs) Handles btnDummy.Click
        'pops a message for a dummy
        Dim UserName As String
        UserName = Environ("USERNAME")

        MsgBox("Just couldn't resist could you?", MsgBoxStyle.Exclamation)

    End Sub

    <System.Web.Services.WebMethod()>
    Public Shared Function get_username() As String
        'copies the NOTE into the clipboard
        Dim Username As String
        Username = Environ("USERNAME")

        Dim Pend As String
        Dim Unworked As String
        Dim Rec As String
        Dim WO As String
        Dim Rvw As String
        Dim Acct As String
        Dim Iplan As String
        Dim Pos As String
        Dim Expec As String
        Dim PR As String
        Dim Iplnst As String
        Dim Src As String
        Dim Clm As String
        Dim ClmS As String
        Dim Act As String
        Dim Nxt As String
        Dim FAct As String
        Dim FNxt As String
        Dim NPPD As String
        Dim Add As String
        Dim strA As String

        If txtAcct.Text = "" Then
            MsgBox("You're missing an account number for your documentation.  Please return to Commentary and input this required information before continuing", MsgBoxStyle.Information)
        End If

        If chkPend.Checked = True Then
            Pend = " Pending Financial. "
        Else Pend = ""
        End If

        If chkUnworked.Checked = True Then
            Unworked = " Unworked. "
        Else Unworked = ""
        End If

        If chkRec.Checked = True Then
            Rec = " Recovery. "
        Else Rec = ""
        End If

        If chkWO.Checked = True Then
            WO = " Write-Off. "
        Else WO = ""
        End If

        If txtAcct.Text <> "" Then
            Acct = "Acct# " & txtAcct.Text
        Else Acct = ""
        End If

        If txtIplan.Text <> "" Then
            Iplan = txtIplan.Text & " "
        Else Iplan = ""
        End If

        If cmbPos.SelectedText <> "" Then
            Pos = " " & cmbPos.SelectedText & " iplan of "
        Else Pos = ""
        End If

        If txtExpec.Text <> "" Then
            Expec = " with an expected reimbursement of $" & txtExpec.Text
        Else Expec = ""
        End If

        If txtPR.Text <> "" Then
            PR = " and a PR of $" & txtPR.Text
        Else PR = ""
        End If

        If cmbRvw.SelectedText <> "" Then
            Rvw = " and has denied for " & cmbRvw.SelectedText & " "
        Else Rvw = ""
        End If

        If cmbIplnst.SelectedText <> "" Then
            Iplnst = " has an " & cmbIplnst.SelectedText
        Else Iplnst = ""
        End If

        If cmbSrc.SelectedText <> "" Then
            Src = " per " & cmbSrc.SelectedText & ". "
        Else Src = ""
        End If

        If cmbClm.SelectedText <> "" Then
            Clm = ". Review of the most recent claim shows " & cmbClm.SelectedText & " for appeals per "
        Else Clm = ""
        End If

        If cmbClmS.SelectedText <> "" Then
            ClmS = cmbClmS.SelectedText & ". "
        Else ClmS = ""
        End If

        If cmbAct.SelectedText <> "" Then
            Act = "Acct will be " & cmbAct.SelectedText & ". "
        Else Act = ""
        End If

        If cmbNxt.SelectedText <> "" Then
            Nxt = cmbNxt.SelectedText & ". "
        Else Nxt = ""
        End If

        If cmbFAct.SelectedText <> "" Then
            FAct = "Acct will be " & cmbFAct.SelectedText & ". "
        Else FAct = ""
        End If

        If cmbFNxt.SelectedText <> "" Then
            FNxt = cmbFNxt.SelectedText & " "
        Else FNxt = ""
        End If

        If txtNPPD.Text <> "" Then
            NPPD = ". PPD has been changed to $" & txtNPPD.Text & " to reflect remit PR "
        Else
            NPPD = ""
        End If

        If txtAdd.Text <> "" Then
            Add = txtAdd.Text & "."
        Else Add = ""
        End If

        '*********************************************************************  NOTE ******************************************************************************
        strA = "Appeals - Reviewed acct for" & Pend & WO & Unworked & Rec & Acct & Iplnst & Pos & Iplan & Rvw & Expec & PR & Clm & ClmS & Act & Nxt & FAct & FNxt & NPPD & Add & "-" & Username

        Try
            Clipboard.SetText(strA) 'TO-DO: Make this work client-side

        Catch copyExc As Runtime.InteropServices.ExternalException
        End Try

    End Function

    'Private Sub btnExit_Click(sender As Object, e As EventArgs)
    '    End
    'End Sub

    'Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
    '    lblTimer.Text = lblTimer.Text - 1
    '    If lblTimer.Text = 0 Then
    '        Me.form1.
    '    End If
    'End Sub

    Private Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        chkPend.Checked = False
        chkWO.Checked = False
        chkUnworked.Checked = False
        chkRec.Checked = False
        cmbRvw.SelectedText = ""
        txtIplan.Text = ""
        cmbPos.SelectedText = ""
        txtExpec.Text = ""
        txtPR.Text = ""
        cmbIplnst.SelectedText = ""
        cmbSrc.SelectedText = ""
        cmbAct.SelectedText = ""
        cmbClm.SelectedText = ""
        cmbClmS.SelectedText = ""
        cmbAct.SelectedText = ""
        cmbNxt.SelectedText = ""
        cmbFAct.SelectedText = ""
        cmbFNxt.SelectedText = ""
        chkPPD.Checked = False
        txtAcct.Text = ""
        txtExpec.Text = ""
        txtAdd.Text = ""

    End Sub

    Private Sub btnHelp_Click(sender As Object, e As EventArgs) Handles btnHelp.Click
        'Send an e-mail for system support
        Process.Start(String.Format("mailto:{0}", "Kaanan.Adams@parallon.com"))
    End Sub

    Private Sub chkPPD_CheckedChanged(sender As Object, e As EventArgs) Handles chkPPD.CheckedChanged
        If chkPPD.Checked = True Then
            txtNPPD.Visible = True
            txtNPPD.Text = txtPR.Text * 0.1
        Else txtNPPD.Visible = False
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
