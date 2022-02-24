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
            Binddata();

        }

    }


    void Binddata()
    {
        ddlCategory.Items.Add(new ListItem("--Select--","0"));
        List<CategoryMst> CategoryList = CategoryMstManager.GetAll();
        if (CategoryList.Count > 0)
        {
            foreach (CategoryMst objcat in CategoryList)
            {
                ddlCategory.Items.Add(new ListItem(objcat.CategoryName, objcat.CategoryId.ToString()));
            }
        }

    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        DetailForm objdetail = new DetailForm();
        if (objdetail != null)
        {
            objdetail.CategoryId =Convert.ToInt32(ddlCategory.SelectedValue);
            if (RadioButton1.Checked)
            {
                objdetail.DetailId =1;
                objdetail.Detail = "Auto";
            }
            else if (RadioButton2.Checked)
            {
                objdetail.DetailId = 2;
                objdetail.Detail = "Common1";
            }
            else if (RadioButton3.Checked)
            {
                objdetail.DetailId = 3;
                objdetail.Detail = "Common";
            }
            else if (RadioButton4.Checked)
            {
                objdetail.DetailId = 4;
                objdetail.Detail = "Job";

            }
            else if (RadioButton5.Checked)
            {
                objdetail.DetailId = 5;
                objdetail.Detail = "Property";
            }
            else
            {
                objdetail.DetailId = 2;
                objdetail.Detail = "Common";
            }

            objdetail.CategoryName = ddlCategory.SelectedItem.Text;

            DetailFormManager.Add(objdetail);
            lblMsg.Text = "successfully Added";

        }


    }
}