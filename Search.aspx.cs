using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Search : System.Web.UI.Page
{
    DataUtils data = new DataUtils();

    protected void Page_Load(object sender, EventArgs e)
    {
        var param = Convert.ToString(Request.QueryString["string"]);
        string sqlStr = "select tendoan,Users.username,tenfile,mota from Doan,Users where tendoan like '%" + param + "%'" +
            "and Doan.authorID=Users.id";
        DataTable table = data.ExecuteDataTable(sqlStr);
        if (string.IsNullOrWhiteSpace(param) || table.Rows.Count == 0)
        {
            lbError.Text = "Không tìm thấy yêu cầu";
            lsTim.DataSource = null;
            return;
        }
        else
        {
            lbError.Text = "Kết quả tìm kiếm cho: \"" + param + "\"";
            //sql.SelectCommand = sqlStr;
            lsTim.DataSource = table;
            DataBind();
        }
    }

    //Code Download
    //Response.ContentType = "application/octet-stream";
    //Response.AppendHeader("Content-Disposition", "attachment; filename=1.jpg");
    //Response.TransmitFile(Server.MapPath("~/anh/1.jpg"));
    //Response.End();

    /*
        string filename = @"Specify the file path in the server over here....";
        FileInfo fileInfo = new FileInfo(filename);

        if (fileInfo.Exists)
        {
        Response.Clear();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + fileInfo.Name);
        Response.AddHeader("Content-Length", fileInfo.Length.ToString());
        Response.ContentType = "application/octet-stream";
        Response.Flush();
        Response.TransmitFile(fileInfo.FullName);
        Response.End();
        }
    */

    public void DownloadFile(object sender, EventArgs evt)
    {
        LinkButton linkButton = (LinkButton)sender;
        string filename = Server.MapPath("~/File/") + Convert.ToString(linkButton.CommandArgument);
        FileInfo fileInfo = new FileInfo(filename);
        lbError.Text = filename;
        if (fileInfo.Exists)
        {
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Convert.ToString(linkButton.CommandArgument));
            Response.TransmitFile(filename);
            Response.End();
        }
        else
        {
            string script = "alert('Rất tiếc!\\nTệp đã bị xoá hoặc không tồn tại')";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertMessage", script, true);
        }
    }
}