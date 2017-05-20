using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Search : System.Web.UI.Page
{
    DataUtils data = new DataUtils();

    protected void Page_Load(object sender, EventArgs e)
    {
        var param = Convert.ToString(Request.QueryString["string"]);
        string sqlStr = "select * from Doan where tendoan like '%" + param + "%'";
        if (string.IsNullOrWhiteSpace(param) || data.ExecuteDataTable(sqlStr).Rows.Count == 0)
        {
            lbError.Text = "Không tìm thấy yêu cầu";
            lsTim.DataSource = null;
            return;
        }
        else
        {
            lbError.Text = "Kết quả tìm kiếm cho: \"" + param + "\"";
            sql.SelectCommand = sqlStr;
        }
    }
}