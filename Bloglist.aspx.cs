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

public partial class Admin_Bloglist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Fill();
        }
    }

    void Fill()
    {
        List<Comments> obj = CommentsManager.GetAll1(0);

        if (obj.Count > 0)
        {
            GridView1.Visible = true;
            GridView1.DataSource = obj;
            GridView1.DataBind();
        }
        else
        {
            GridView1.Visible = false;
            lblMsg.Text = "No Data Available";
        }


    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        int CommentID;
        if (e.CommandName.ToString() == "Delete")
        {
            CommentID = Convert.ToInt32(e.CommandArgument.ToString());

            CommentsManager.Delete(CommentID);

            lblMsg.Text = "Successfully Deleted";

        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        Fill();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridView1.EditIndex = -1;
        Fill();
    }
}
