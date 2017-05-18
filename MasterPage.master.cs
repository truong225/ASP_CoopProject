using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    DataUtils data = new DataUtils();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userID"] == null)
        {
            celDangXuat.Visible = false;
            celDangKy.Visible = true;
            celDangNhap.Visible = true;
        }
    }

    protected void btnSearch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        data.timKiem(txtSearch.Text);
    }
}
