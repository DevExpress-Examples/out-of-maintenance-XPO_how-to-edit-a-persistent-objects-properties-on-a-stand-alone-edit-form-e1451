using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Xpo;

public partial class EditForm : System.Web.UI.Page
{
    Session xpoSession;
    protected void Page_Init(object sender, EventArgs e) {
        xpoSession = XpoHelper.GetNewSession();
        xpoOrders.Session = xpoSession;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e) {
        Response.Redirect("~/Default.aspx");
    }
    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e) {
        if(e.CommandName == "Cancel")
            Response.Redirect("~/Default.aspx");
    }
}
