<%@ Page Language="vb" AutoEventWireup="true" CodeFile="EditForm.aspx.vb" Inherits="EditForm" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Xpo.v9.1, Version=9.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<%@ Register Assembly="DevExpress.Web.v9.1, Version=9.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxDataView" TagPrefix="dxdv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Edit Form</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<asp:FormView ID="FormView1" runat="server" DataKeyNames="Oid" DataSourceID="xpoOrders" DefaultMode="Edit" OnItemCommand="FormView1_ItemCommand" OnItemUpdated="FormView1_ItemUpdated">
			<EditItemTemplate>
				Order Date:
				<dxe:ASPxTextBox ID="txtOrderDate" runat="server" Width="170px" Text='<%#Bind("OrderDate")%>'>
				</dxe:ASPxTextBox>
				Payment Amount:
				<dxe:ASPxTextBox ID="txtPaymentAmount" runat="server" Width="170px" Text='<%#Bind("PaymentAmount")%>'>
				</dxe:ASPxTextBox>
				<br />
				<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
					Text="Update"></asp:LinkButton>
				<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
					Text="Cancel"></asp:LinkButton>
			</EditItemTemplate>
		</asp:FormView>
		<a href="~/Default.aspx" runat="server">Back to the View form</a>
		<dxxpo:XpoDataSource ID="xpoOrders" runat="server" TypeName="Order" Criteria="[Oid] = ?" >
			<CriteriaParameters>
				<asp:QueryStringParameter DefaultValue="-1" Name="oid" QueryStringField="id" />
			</CriteriaParameters>
		</dxxpo:XpoDataSource>
	</div>
	</form>
</body>
</html>