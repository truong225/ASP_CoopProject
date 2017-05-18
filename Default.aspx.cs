using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["userID"] = null;
        }

        var master = Master as MasterPage2;

        if (Session["userID"] != null)
        {
            Master.UserBar.Visible = true;
            Master.LabelUserBar.Text = "Hello";
        }
        else
        {
            Master.UserBar.Visible = false;
            Master.LabelUserBar.Text = "Out";
        }
    }
}