using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserInformation : System.Web.UI.Page
{
    DataUtils data = new DataUtils();

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Session["userID"]);
        User u = data.getUser(id);
        if (u != null)
        {
        //    txtUser.Text = u.Username;
        //    txtGender.Text = u.GioiTinh;
        //    txtFullname.Text = u.FullName;
        //    txtEmail.Text = u.Email;
        }
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txtGender.Enabled = true;
        txtFullname.Enabled = true;
        txtEmail.Enabled = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        User u = new User();
    }
}