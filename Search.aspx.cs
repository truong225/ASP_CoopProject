using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var param = Convert.ToString(Request.QueryString["string"]);
        if (param == null || param=="")
        {
            lbError.Text = "Không tìm thấy yêu cầu";
        }
        else
        {
            lbError.Text = param;
        }
    }
}