using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userID"] != null)
        {
            return;
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string loginName = username.Text;
        string pass = password.Text;

        DataUtils data = new DataUtils();
        User user = data.checkLogin(loginName, pass);
        if (user == null)
        {
            txtErr.Text = "Tên người dùng hoặc mật khẩu không đúng";
        }
        else
        {
            Session["userID"] = user.ID;
            if (user.Permission == 0)
                Response.Redirect("Default.aspx");
            else
                Response.Redirect("~/Dashboard.aspx");
        }
    }
}