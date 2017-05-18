using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tailieu : System.Web.UI.Page
{
    DataUtils data = new DataUtils();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Display();
        }
    }

    public void Display()
    {
        list.DataSource = data.getAllDoAn();
        DataBind();
    }
}