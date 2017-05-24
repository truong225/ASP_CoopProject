using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSearch.Attributes.Add("placeholder", "Tìm kiếm ...");
        if (Session["userName"] == null)
        {
            userbar.Visible = false;
            linkLog.Text = "Đăng nhập";
            linkLogMenu.Text = "Đăng nhập";
            linkTK.Visible = false;
            linkRegis.Visible = true;
        }
        else
        {
            userbar.Visible = true;
            lbUser.Text = (string)Session["userName"];
            linkLog.Text = "Đăng xuất";
            linkLogMenu.Text = "Đăng xuất";
            linkRegis.Visible = false;
        }
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string str = txtSearch.Text.Replace(" ", "+");
        var url = String.Format("~/Search.aspx?string={0}", str);
        Response.Redirect(url);
    }

    public HyperLink UserBar
    {
        get
        {
            return this.userbar;
        }
    }

    public Label LabelUserBar
    {
        get
        {
            return this.lbUserBar;
        }
    }

    public Label LabelUser
    {
        get
        {
            return this.lbUser;
        }
    }

    public HyperLink LinkLog
    {
        get
        {
            return this.linkLog;
        }
    }

    public HyperLink LinkLogMenu
    {
        get
        {
            return this.linkLogMenu;
        }
    }
}
