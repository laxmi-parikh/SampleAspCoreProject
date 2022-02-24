using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessL;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindata();
            btn_search.Attributes.Add("src", ResolveUrl("~/images/but_search.png"));
           // ImageButton1.Attributes.Add("src", ResolveUrl("~/images/submit.jpg"));

            if (Session["UserId"] != null)
            {
                Panel2.Visible = true;
                Panel1.Visible = false;


                lblMsg.Text = "Welcome "
                 + Session["UserName"].ToString();

            }
            else
            {
                Panel1.Visible = true;
                Panel2.Visible = false;

            }
        }
    }


    void Bindata()
    {

        List<CategoryMst> objCategory = CategoryMstManager.GetAllByCategory(Convert.ToInt32(0));
        if (objCategory.Count > 0)
        {
            ddlcategory.Items.Clear();
            //ddlsubcategory.Items.Clear();
            //ddlsub1category.Items.Clear();
            ddlcategory.Items.Add(new ListItem("--Select--", "0"));
          
            foreach (CategoryMst cat in objCategory)
            {
                ddlcategory.Items.Add(new ListItem(cat.CategoryName, cat.CategoryId.ToString()));

            }

        }
    }
    protected void btn_search_Click(object sender, ImageClickEventArgs e)
    {
        if (txtcompanyname.Text == "Looking for" || ddlcategory.SelectedValue == "0")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Alert", "alert('Please select looking for and Category');", true);
            return;
        }
       // string category = txtcompanyname.Text;

        if (ddlcategory.SelectedValue != "0" && !string.IsNullOrEmpty(txtcompanyname.Text))
        {
            CategoryMst objcategory = CategoryMstManager.Select(Convert.ToInt32(ddlcategory.SelectedValue));

            // DetailMst objsub = DetailMstManager.Select(category);


            if (objcategory != null)
            {
                Session["Category"] = objcategory.CategoryName;
                //if (txtcity.Text == "")
                //{
                //    Session["City"] = null;
                // }
                //elsehttp://localhost:1576/Website/WebPages/Category/Default.aspx
                //  {
                //     Session["City"] = txtcity.Text;
                // }
                string CategoryName = objcategory.CategoryName.Replace("&", "And");
                int Categoryid = objcategory.CategoryId;

                // string Url = GetRouteUrl("Category", new { Categoryid = Categoryid, CategoryName = CategoryName });
                Response.Redirect(ResolveUrl("~/Category/" + Categoryid + "/" + objcategory.CatId + "/" + CategoryName).ToString().Replace(" ", "-"));


                // <%=Page.ResolveUrl("~/Category")%>/<%#Eval("CategoryId") %>/<%#Eval("CatId") %>/<%#Eval("CategoryName1").ToString().Replace(" ","-") %>
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Alert", "alert('No data Found');", true);
            return;

        }

    }

}
