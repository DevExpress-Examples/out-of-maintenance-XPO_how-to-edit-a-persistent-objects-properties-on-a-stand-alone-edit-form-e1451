<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Xpo.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>How to edit a persistent object's properties on a stand-alone edit form</title>
</head>
<body>
	<form id="form1" runat="server" enableviewstate="false">
	<div>
		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
			DataSourceID="xpoOrders" KeyFieldName="Oid" Width="865px" ClientInstanceName="grid">
			<Columns>
				<dxwgv:GridViewDataHyperLinkColumn Caption="#" FieldName="Oid" ReadOnly="True"
					VisibleIndex="0">
					<PropertiesHyperLinkEdit NavigateUrlFormatString="~/EditForm.aspx?id={0}"
						Text="Edit...">
					</PropertiesHyperLinkEdit>
				</dxwgv:GridViewDataHyperLinkColumn>
				<dxwgv:GridViewDataDateColumn Caption="OrderDate" FieldName="OrderDate" VisibleIndex="1">
				</dxwgv:GridViewDataDateColumn>
				<dxwgv:GridViewDataTextColumn Caption="PaymentAmount" FieldName="PaymentAmount" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn Caption="Customer Company Name" FieldName="Customer.CompanyName"
					VisibleIndex="3">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
		</dxwgv:ASPxGridView>
	</div>
		<dxxpo:XpoDataSource ID="xpoOrders" runat="server" TypeName="Order" />
	</form>
</body>
</html>