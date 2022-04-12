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
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Text;
using System.Globalization;



public partial class BioPluginWebApp_indezx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblEngineType.Text = SessionManager.CurrentEngine.ToString();
                lblOperation.Text = BPOperationType.Verification.ToString();
                if (SessionManager.CurrentEngine == EngineType.PalmVein)
                {
                    lblScanFingerDouble.Text = "Double hand";
                    lblScanFingerSingle.Text = "Single hand";
                }
            }
        }
        protected void btnVerify_Single_Click(object sender, EventArgs e)
        {
            string Employ = txtRegID_S.Text;
            Session["Emp"] = txtRegID_S.Text;
            SessionManager.CurrentScanFinger = BPScanFinger.Single;
            PrepareTemplate();
            Response.Redirect("ProcessOperation.aspx");
        }

       

        private void PrepareTemplate()
        {
            BPData template = new BPData
            {
                LeftTemplate = Leftbiodata.Value,
                RightTemplate = Rightbiodata.Value,
                LeftDupTemplate = string.Empty,
                RightDupTemplate = string.Empty,
                RegID = (SessionManager.CurrentScanFinger == BPScanFinger.Double) ? txtRegID_D.Text.Trim() : txtRegID_S.Text.Trim()
            };
            SessionManager.CurrentTemplate = template;
            SessionManager.CurrentOperation = BPOperationType.Verification;
        }

    }

