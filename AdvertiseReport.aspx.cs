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
using BusinessL;
using System.Collections.Generic;

public partial class Admin_AdvertiseReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    void Bind()
    {

    }

    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            gvAdvrtchart.DataSource = AdvertiseMstManager.GetAdvertiseCount(Convert.ToInt32(ddlMonth.SelectedValue));
            gvAdvrtchart.DataBind();
            //lblmsg.Visible = false;

            if (gvAdvrtchart.Rows.Count == 0)
            {
                lblmsg.Text = "No Record Found";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
}
