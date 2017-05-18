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

    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string str = txtSearch.Text.Replace(" ", "+");
        var url = String.Format("~/Search.aspx?string={0}", str);
        Response.Redirect(url);
    }
}
