using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessL;

public partial class Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindata();
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        CategoryMst objcat = new CategoryMst();
        if (objcat != null)
        {
            objcat.CategoryName = txtCategoryName.Text;
            objcat.Title = txtTitle.Text;
            objcat.Keywords = txtkeyword.Text;
            objcat.description = txtDescribtion.Text;
            objcat.CategoryId = Convert.ToInt32(Request.QueryString["Id"]);
            objcat.ParentId = Convert.ToInt32(CategoryMstManager.Select(Convert.ToInt32(Request.QueryString["Id"])).ParentId);
            objcat.CatId = Convert.ToInt32(CategoryMstManager.Select(Convert.ToInt32(Request.QueryString["Id"])).CatId);
       
            CategoryMstManager.Update(objcat);

        }

    }

    void Bindata()
    {
        CategoryMst objcate = CategoryMstManager.Select(Convert.ToInt32(Request.QueryString["Id"]));
        if (objcate != null)
        {
            txtCategoryName.Text = objcate.CategoryName;
            txtDescribtion.Text = objcate.description;
            txtkeyword.Text = objcate.Keywords;
            txtTitle.Text = objcate.Keywords;
        }
        
       
    }
    
  
}