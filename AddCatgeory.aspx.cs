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
            if (ddlmaincategory.SelectedValue == "0" && ddlsub1category.SelectedValue == "0" && ddlsubcategory.SelectedValue == "0" )
            {
            objcat.ParentId = 0;
            objcat.CatId = 0;
            } 

            if (ddlmaincategory.SelectedValue != "0" && ddlsub1category.SelectedValue == "0" && ddlsubcategory.SelectedValue == "0" )
            {
                objcat.ParentId = Convert.ToInt32(ddlmaincategory.SelectedValue);
                objcat.CatId = 1;
            }

            if (ddlmaincategory.SelectedValue != "0" && ddlsub1category.SelectedValue == "0" && ddlsubcategory.SelectedValue != "0" )
            {
                objcat.ParentId = Convert.ToInt32(ddlsubcategory.SelectedValue);
                objcat.CatId = 2;
            }


            if (ddlmaincategory.SelectedValue != "0" && ddlsub1category.SelectedValue != "0" && ddlsubcategory.SelectedValue != "0")
            {
                objcat.ParentId = Convert.ToInt32(ddlsub1category.SelectedValue);
                objcat.CatId = 3;
            }
            objcat.CategoryType = ddlCategoryType.SelectedValue;
            CategoryMstManager.Add(objcat);

        }

    }

    void Bindata()
    {
        
        List<CategoryMst> objCategory = CategoryMstManager.GetAllByCategory(Convert.ToInt32(0));
        if (objCategory.Count > 0)
        {
            ddlmaincategory.Items.Clear();
            //ddlsubcategory.Items.Clear();
            //ddlsub1category.Items.Clear();
            ddlmaincategory.Items.Add(new ListItem("--Select--", "0"));
            ddlsubcategory.Items.Add(new ListItem("--Select--", "0"));
            ddlsub1category.Items.Add(new ListItem("--Select--", "0"));
            foreach (CategoryMst cat in objCategory)
            {
                ddlmaincategory.Items.Add(new ListItem(cat.CategoryName, cat.CategoryId.ToString()));

            }
            
        }
    }
    protected void ddlmaincategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlmaincategory.SelectedValue != "0")
        {
            ddlsubcategory.Items.Clear();
           // ddlsub1category.Items.Clear();
            ddlsub1category.Items.Add(new ListItem("--Select--", "0"));
            ddlsubcategory.Items.Add(new ListItem("--Select--", "0"));
            List<CategoryMst> objCategory = CategoryMstManager.GetAllBySubCategory(Convert.ToInt32(1), Convert.ToInt32(ddlmaincategory.SelectedValue));
            if (objCategory.Count > 0)
            {
              
                foreach (CategoryMst cat in objCategory)
                {
                    ddlsubcategory.Items.Add(new ListItem(cat.CategoryName, cat.CategoryId.ToString()));

                }

            }
        }

    }
    protected void ddlsubcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlsubcategory.SelectedValue != "0")
        {
            ddlsub1category.Items.Clear();
            ddlsub1category.Items.Add(new ListItem("--Select--", "0"));
            List<CategoryMst> objCategory = CategoryMstManager.GetAllBySubCategory(Convert.ToInt32(2), Convert.ToInt32(ddlsubcategory.SelectedValue));
            if (objCategory.Count > 0)
            {
                
              
                foreach (CategoryMst cat in objCategory)
                {
                    ddlsub1category.Items.Add(new ListItem(cat.CategoryName, cat.CategoryId.ToString()));

                }

            }
        }

    }
  
}