using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
using System.Data.SqlClient;

public partial class DangKy : System.Web.UI.Page
{
    public static DirectoryInfo temp;
    private string avafile;

    protected void Page_Load(object sender, EventArgs e)
    {
        temp = new DirectoryInfo(Server.MapPath("~/"));
        avafile = "noavatar.png";
        imgAvatar.ImageUrl = "~/anh/" + avafile;
    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        string passTemp = txtPass.Text;

        if (fileAvatar.PostedFile.ContentLength > 1048576)
        {
            string script = "alert('File quá lớn!\\nVui lòng tải ảnh có dung lượng tối đa 1MB')";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertMessage", script, true);
            txtPass.Text = passTemp;
            return;
        }

        if (fileAvatar.HasFile)
        {
            //Kiem tra va xoa thu muc temp
            long length = temp.GetFiles("temp/", SearchOption.AllDirectories).Sum(t => (new FileInfo(t.FullName).Length));

            if (temp.GetDirectories("temp/", SearchOption.AllDirectories).Length > 100 || length > 104857600)   //104857600
            {
                foreach (DirectoryInfo d in temp.GetDirectories("temp/", SearchOption.AllDirectories))
                {
                    d.Delete(true);
                }
            }


            //Upload anh avatar len thu muc temp
            System.IO.Directory.CreateDirectory(Server.MapPath("~/temp/" + DateTime.Now.ToString("dd-MM-yyyy_HHmmss")));
            string path = DateTime.Now.ToString("dd-MM-yyyy_HHmmss") + "/" + fileAvatar.FileName;
            avafile = fileAvatar.FileName;
            fileAvatar.PostedFile.SaveAs(Server.MapPath("~/temp/" + path));
            imgAvatar.ImageUrl = "~/temp/" + path;
        }
        txtPass.Text = passTemp;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string gioitinhid = "3";
            if (drpGender.SelectedValue.Equals("Nam"))
                gioitinhid = "1";
            if (drpGender.SelectedValue.Equals("Nữ"))
                gioitinhid = "2";

            string pass = EncryptSecurity.EncryptMD5Hash(txtPass.Text);
            
            DataUtils data = new DataUtils();
            data.AddUser(txtTen.Text, pass, txtFullname.Text, gioitinhid, txtEmail.Text, avafile);

            string script = "alert('Đăng ký thành công!')";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertMessage", script, true);
            Thread.Sleep(5000);

            Response.Redirect("DangNhap.aspx");
        }
        catch
        {
            string script = "alert('Error services')";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertMessage", script, true);
        }
    }
}