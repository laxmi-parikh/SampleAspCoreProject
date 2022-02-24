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

public partial class Admin_categories : System.Web.UI.Page
{
    MainCategorymst objMcategory = new MainCategorymst();
    SubCategoryMst objSubCategory = new SubCategoryMst();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            Bind();
           // BindSubCategory();
            BindCount();
            if (Request.QueryString["id"] == "0")
            {
                lblMainCategoryName.Text = "";
            }
            else
            {
                //List<MainCategorymst> objMCategoryName = new List<MainCategorymst>();
                //objMCategoryName = MainCategorymstManager.GetAllForMainCategoryName(Convert.ToInt32(Request.QueryString["id"]));

                //for (int i = 0; i < objMCategoryName.Count; i++)
                //{
                //    lblMainCategoryName.Text = objMCategoryName[i].MainCategory;
                //    BindSubCategory();
                //}

            }


        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row1 in gvMainCategory.Rows)
        {
            if (row1.RowType == DataControlRowType.DataRow)
            {
                Label lblMaincategoryId = (Label)row1.FindControl("lblMaincategoryId");
                Label lblMainCategory = (Label)row1.FindControl("lblMainCategory");
                TextBox txtEditMainCategory = (TextBox)row1.FindControl("txtEditMainCategory");
                CheckBox CheckBox1 = (CheckBox)row1.FindControl("CheckBox1");

                if (CheckBox1.Checked == true)
                {
                    txtEditMainCategory.Visible = true;
                    lblMainCategory.Visible = false;

                    objMcategory = MainCategorymstManager.Select(Convert.ToInt32(lblMaincategoryId.Text));
                    txtEditMainCategory.Text = objMcategory.MainCategory;
                }
                else
                {
                    lblMainCategory.Visible = true;
                    txtEditMainCategory.Visible = false;
                }

            }
        }
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        try
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lblSubcategoryId = (Label)e.Item.FindControl("lblSubcategoryId");
                Label lblMainCategoryId = (Label)e.Item.FindControl("lblMainCategoryId");
                Label lblSubCategoryName = (Label)e.Item.FindControl("lblSubCategoryName");
                TextBox txtEditSubcategoryname = (TextBox)e.Item.FindControl("txtEditSubcategoryname");
                CheckBox CheckBox2 = (CheckBox)e.Item.FindControl("CheckBox2");

                if (CheckBox2.Checked == true)
                {
                    lblSubCategoryName.Visible = false;
                    txtEditSubcategoryname.Visible = true;

                    objSubCategory = SubCategoryMstManager.Select(Convert.ToInt32(lblSubcategoryId.Text));
                    txtEditSubcategoryname.Text = objSubCategory.SubCategoryName;
                }
                else
                {
                    lblSubCategoryName.Visible = true;
                    txtEditSubcategoryname.Visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            foreach (DataListItem dl1 in DataList1.Items)
            {

                Label lblSubcategoryId = (Label)dl1.FindControl("lblSubcategoryId");
                Label lblMainCategoryId = (Label)dl1.FindControl("lblMainCategoryId");
                Label lblSubCategoryName = (Label)dl1.FindControl("lblSubCategoryName");
                TextBox txtEditSubcategoryname = (TextBox)dl1.FindControl("txtEditSubcategoryname");
                CheckBox CheckBox2 = (CheckBox)dl1.FindControl("CheckBox2");

                if (CheckBox2.Checked == true)
                {
                    lblSubCategoryName.Visible = false;
                    txtEditSubcategoryname.Visible = true;

                    objSubCategory = SubCategoryMstManager.Select(Convert.ToInt32(lblSubcategoryId.Text));
                    txtEditSubcategoryname.Text = objSubCategory.SubCategoryName;
                }
                else
                {
                    lblSubCategoryName.Visible = true;
                    txtEditSubcategoryname.Visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
    protected void imgbtnAdd_Click(object sender, ImageClickEventArgs e)
    {
        objMcategory.MainCategory = txtMainCategory.Text;
        objMcategory.Insertedby = 1;
        objMcategory.Insertedon = System.DateTime.Now;

        int MainCategoryId = Convert.ToInt32(MainCategorymstManager.Add(objMcategory));
        if (MainCategoryId > 0)
        {
            lblmsg.Text = "Added Successfully";
            txtMainCategory.Text = "";

        }
        else
        {
            lblmsg.Text = "Already Exists";
            txtMainCategory.Text = "";
        }
        Bind();
    }

    void Bind()
    {
        List<MainCategorymst> objMainCat = MainCategorymstManager.GetAll();

        if (objMainCat.Count > 0)
        {
            gvMainCategory.DataSource = objMainCat;
            gvMainCategory.DataBind();

            List<MainCategorymst> objMCategoryName = new List<MainCategorymst>();
            objMCategoryName = MainCategorymstManager.GetAllForMainCategoryName(Convert.ToInt32(Request.QueryString["id"]));

            if (objMCategoryName.Count != 0)
            {
                for (int i = 0; i < objMCategoryName.Count; i++)
                {
                    if (objMCategoryName[i].Deactive != 1)
                    {
                        lblMainCategoryName.Text = objMCategoryName[i].MainCategory;
                        BindSubCategory();
                    }
                    else
                    {

                    }
                }
            }
            else
            {
                List<MainCategorymst> objMc = new List<MainCategorymst>();
                List<SubCategoryMst> objSc = new List<SubCategoryMst>();
                objSc = SubCategoryMstManager.GetAll();
                for (int k = 0; k < objSc.Count; k++)
                {

                    int Mid = objSc[k].MainCategoryId;
                    objMc = MainCategorymstManager.GetAllForMainCategoryName(Mid);

                    for (int j = 0; j < objMc.Count; j++)
                    {
                        lblMainCategoryName.Text = objMc[j].MainCategory;
                        BindTopSubCategory();
                    }
                    BindCount();
                }
            }
          
        }
            
        else
        {
            lblmsg.Text = "No Data found";
        }
    }

    void BindCount()
    {


        if (Convert.ToInt32(Request.QueryString["id"]) != 0)
        {
            List<SubCategoryMst> objsubcatcont = SubCategoryMstManager.GetCountSubCategory(Convert.ToInt32(Request.QueryString["id"]));
            for (int i = 0; i < objsubcatcont.Count; i++)
            {
                lblcount1.Text = Convert.ToString(objsubcatcont[i].count);
            }
        }
        else
        {
            List<MainCategorymst> objMc = new List<MainCategorymst>();
            List<SubCategoryMst> objSc = new List<SubCategoryMst>();
            objSc = SubCategoryMstManager.GetAll();
            for (int k = 0; k < objSc.Count; k++)
            {

                int Mid = objSc[k].MainCategoryId;
                List<SubCategoryMst> objsubcatcont = SubCategoryMstManager.GetCountSubCategory(Mid);
                for (int i = 0; i < objsubcatcont.Count; i++)
                {
                    lblcount1.Text = Convert.ToString(objsubcatcont[i].count);
                }
            }
        }

    }


    protected void imgbtnedit_Click(object sender, ImageClickEventArgs e)
    {
        foreach (GridViewRow row1 in gvMainCategory.Rows)
        {
            if (row1.RowType == DataControlRowType.DataRow)
            {
                Label lblMaincategoryId = (Label)row1.FindControl("lblMaincategoryId");
                Label lblMainCategory = (Label)row1.FindControl("lblMainCategory");
                TextBox txtEditMainCategory = (TextBox)row1.FindControl("txtEditMainCategory");
                CheckBox CheckBox1 = (CheckBox)row1.FindControl("CheckBox1");

                if (CheckBox1.Checked == true)
                {
                    lblMainCategory.Visible = false;
                    txtEditMainCategory.Visible = true;

                    objMcategory.MainCategoryId = Convert.ToInt32(lblMaincategoryId.Text);
                    objMcategory.MainCategory = txtEditMainCategory.Text;
                    objMcategory.Updatedby = 1;
                    objMcategory.Updatedon = System.DateTime.Now;

                    MainCategorymstManager.Update(objMcategory);
                    lblmsg.Text = "Updated Successfully";


                    List<MainCategorymst> objMCategoryName = new List<MainCategorymst>();
                    objMCategoryName = MainCategorymstManager.GetAllForMainCategoryName(Convert.ToInt32(Request.QueryString["id"]));

                    for (int i = 0; i < objMCategoryName.Count; i++)
                    {
                        lblMainCategoryName.Text = objMCategoryName[i].MainCategory;
                        //BindSubCategory();
                    }



                    Bind();
                    lblMainCategory.Visible = true;
                    txtEditMainCategory.Visible = false;
                    CheckBox1.Checked = false;
                }
                else
                {
                    lblMainCategory.Visible = true;
                    txtEditMainCategory.Visible = false;
                }

            }
        }
    }
    protected void imgbtndelete_Click(object sender, ImageClickEventArgs e)
    {
        foreach (GridViewRow row1 in gvMainCategory.Rows)
        {
            if (row1.RowType == DataControlRowType.DataRow)
            {
                Label lblMaincategoryId = (Label)row1.FindControl("lblMaincategoryId");
                Label lblMainCategory = (Label)row1.FindControl("lblMainCategory");
                TextBox txtEditMainCategory = (TextBox)row1.FindControl("txtEditMainCategory");
                CheckBox CheckBox1 = (CheckBox)row1.FindControl("CheckBox1");

                if (CheckBox1.Checked == true)
                {
                    lblMainCategory.Visible = false;
                    txtEditMainCategory.Visible = true;

                    MainCategorymstManager.Delete(Convert.ToInt32(lblMaincategoryId.Text));
                   // SubCategoryMstManager.Delete(Convert.ToInt32(lblSubcategoryId.Text));

                    lblmsg.Text = "deleted Successfully";
                    Bind();
                    BindTopSubCategory();

                    //List<MainCategorymst> objMCategoryName = new List<MainCategorymst>();
                    //objMCategoryName = MainCategorymstManager.GetAllForMainCategoryName(Convert.ToInt32(Request.QueryString["id"]));

                    //for (int i = 0; i < objMCategoryName.Count; i++)
                    //{
                        //lblMainCategoryName.Text = objMCategoryName[i].MainCategory;
                        BindSubCategory();
                    //}
                }
                else
                {
                    lblMainCategory.Visible = true;
                    txtEditMainCategory.Visible = false;
                }
            }
        }
    }
    protected void imgAddsubcatbtn_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            objMcategory = MainCategorymstManager.SelectSubCatViaMainCategory(Convert.ToInt32(Request.QueryString["id"]));


            if (Convert.ToInt32(Request.QueryString["id"]) != 0) //|| Request.QueryString["id"] != "" )  // (objMcategory.Deactive !=1 && objMcategory.MainCategoryId !=0)
            {
                objSubCategory.MainCategoryId = Convert.ToInt32(Request.QueryString["id"]);  //objMcategory.MainCategoryId;
                objSubCategory.SubCategoryName = txtSubcategory.Text;
                objSubCategory.Insertedby = 1;
                objSubCategory.Insertedon = System.DateTime.Now;

                int SubCategoryId = Convert.ToInt32(SubCategoryMstManager.Add(objSubCategory));
                if (SubCategoryId > 0)
                {
                    lblmsg.Text = "Added Successfully";
                    BindSubCategory();
                    BindCount();
                }
                else
                {
                    lblmsg.Text = "Already Exists";
                }
            }
            else
            {
                lblmsg.Text = "Please Select MainCategory";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
    protected void imgEditsubcatbtn_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            foreach (DataListItem dl1 in DataList1.Items)
            {
                Label lblSubcategoryId = (Label)dl1.FindControl("lblSubcategoryId");
                Label lblMainCategoryId = (Label)dl1.FindControl("lblMainCategoryId");
                Label lblSubCategoryName = (Label)dl1.FindControl("lblSubCategoryName");
                TextBox txtEditSubcategoryname = (TextBox)dl1.FindControl("txtEditSubcategoryname");
                CheckBox CheckBox2 = (CheckBox)dl1.FindControl("CheckBox2");

                if (CheckBox2.Checked == true)
                {
                    lblSubCategoryName.Visible = false;
                    txtEditSubcategoryname.Visible = true;

                    objSubCategory.SubCategoryId = Convert.ToInt32(lblSubcategoryId.Text);
                    objSubCategory.MainCategoryId = Convert.ToInt32(lblMainCategoryId.Text);
                    objSubCategory.SubCategoryName = txtEditSubcategoryname.Text;
                    objSubCategory.Updatedby = 1;
                    objSubCategory.Updatedon = System.DateTime.Now;

                    SubCategoryMstManager.Update(objSubCategory);
                    lblmsg.Text = "Updated Successfully";
                    BindSubCategory();
                }
                else
                {
                    lblSubCategoryName.Visible = true;
                    txtEditSubcategoryname.Visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
            lblmsg.Text = "";
        }
    }
    protected void imgsubcatbtn_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            foreach (DataListItem dl1 in DataList1.Items)
            {
                Label lblSubcategoryId = (Label)dl1.FindControl("lblSubcategoryId");
                Label lblMainCategoryId = (Label)dl1.FindControl("lblMainCategoryId");
                Label lblSubCategoryName = (Label)dl1.FindControl("lblSubCategoryName");
                TextBox txtEditSubcategoryname = (TextBox)dl1.FindControl("txtEditSubcategoryname");
                CheckBox CheckBox2 = (CheckBox)dl1.FindControl("CheckBox2");

                if (CheckBox2.Checked == true)
                {
                    lblSubCategoryName.Visible = false;
                    txtEditSubcategoryname.Visible = true;

                    SubCategoryMstManager.Delete(Convert.ToInt32(lblSubcategoryId.Text));
                    lblmsg.Text = "Deleted Successfully";
                    BindSubCategory();
                    BindCount();
                    txtEditSubcategoryname.Visible = false;
                }
                else
                {
                    lblSubCategoryName.Visible = true;
                    txtEditSubcategoryname.Visible = false;
                }
            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
            lblmsg.Text = "";
        }
    }

    void BindSubCategory()
    {

        try
        {

            if (Convert.ToInt32(Request.QueryString["id"]) != 0)
            {
                objMcategory = MainCategorymstManager.SelectSubCatViaMainCategory(Convert.ToInt32(Request.QueryString["id"]));


                //List<SubCategoryMst> objSubCategory1 = SubCategoryMstManager.GetAll(Convert.ToInt32(Request.QueryString["id"])); //new List<SubCategoryMst>();
                if (objMcategory.Deactive !=1)
                {
                    List<SubCategoryMst> objSubCategory1 = SubCategoryMstManager.GetAll(objMcategory.MainCategoryId); //new List<SubCategoryMst>();

                    if (objSubCategory1.Count > 0)
                    {
                        DataList1.DataSource = objSubCategory1;
                        DataList1.DataBind();
                    }
                    else
                    {
                        lblmsg.Text = "No Data Found";
                    }
                }
                else
                {
                    //lblmsg.Text;
                }
            }
            else
            {

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }

    void BindTopSubCategory()
    {
        //objSubCategory = SubCategoryMstManager.GetAll();

        DataList1.DataSource = SubCategoryMstManager.GetAll();
        DataList1.DataBind();
    }
}
