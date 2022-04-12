using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using BPWebApplication;


public partial class DeleteID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblEngineType.Text = SessionManager.CurrentEngine.ToString();
            lblOperation.Text   = BPOperationType.DeleteID.ToString();
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        PrepareTemplate();
        Response.Redirect("ProcessOperation.aspx");
    }


    private void PrepareTemplate()
    {
        BPData template = new BPData
        {
         
            RegID = (SessionManager.CurrentScanFinger == BPScanFinger.Double) ? txtRegID_D.Text.Trim() : txtRegID_S.Text.Trim()};

        SessionManager.CurrentOperation = BPOperationType.DeleteID;
    }

}
