Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Xpo

Partial Public Class EditForm
	Inherits System.Web.UI.Page
	Private xpoSession As Session
	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		xpoSession = XpoHelper.GetNewSession()
		xpoOrders.Session = xpoSession
	End Sub

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As FormViewUpdatedEventArgs)
		Response.Redirect("~/Default.aspx")
	End Sub
	Protected Sub FormView1_ItemCommand(ByVal sender As Object, ByVal e As FormViewCommandEventArgs)
		If e.CommandName = "Cancel" Then
			Response.Redirect("~/Default.aspx")
		End If
	End Sub
End Class
