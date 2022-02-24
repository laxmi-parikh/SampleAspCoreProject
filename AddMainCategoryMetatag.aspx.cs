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

public partial class Admin_AddMainCategoryMetatag : System.Web.UI.Page
{
    MainCategorySEOMst objMaincatseo = new MainCategorySEOMst();
    MainCategorymst objMaincat = new MainCategorymst();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMainCategory();
        }
    }

    void BindMainCategory()
    {
        ddlMaincategory.DataValueField = "MainCategoryId";
        ddlMaincategory.DataTextField = "MainCategory";

        ddlMaincategory.DataSource = MainCategorymstManager.GetAll();
        ddlMaincategory.DataBind();

        ddlMaincategory.Items.Insert(0, "Select");
    }

    protected void imgbtnsave_Click(object sender, ImageClickEventArgs e)
    {
        objMaincatseo.Maincategoryid = Convert.ToInt32(ddlMaincategory.SelectedValue);
        objMaincatseo.Metakeywords = txtkeywords.Text;
        objMaincatseo.Metadescription = txtdescription.Text;
        objMaincatseo.Metatitle = txtTitle.Text;
        objMaincatseo.Insertedby = 1;

        int MetaTagid = Convert.ToInt32(MainCategorySEOMstManager.Add(objMaincatseo));

        if(MetaTagid>0)
        {
            lblmsg1.Text = "Added Successfully";
            Response.Redirect("DetailMaincategorySEO.aspx");
        }
        else
        {
            lblmsg1.Text = "Not Added";
        }
    }
}
