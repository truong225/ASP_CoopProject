using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for ConnectionUtils
/// </summary>
public class DataUtils
{
    private SqlConnection conn;
    private static string dataSource = "MYPC\\MSSQLSERVER_1";
    private static string initialCatalog = "qldoan_asp";

    public DataUtils()
    {
        //
        // TODO: Add constructor logic here
        //
        string connectionStr = "Data Source=" + dataSource + "; Initial Catalog=" + initialCatalog + ";Integrated Security=true";
        conn = new SqlConnection(connectionStr);
    }

    public User checkLogin(string username, string password)
    {
        try
        {
            string sql = "Select * from Users where username=@username and password=@password";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("password", password);
            SqlDataReader reader = cmd.ExecuteReader();

            if (!reader.HasRows)
                return null;

            User user = new User();
            while (reader.Read())
            {
                user.ID = Convert.ToInt32(reader["id"]);
                user.Username = Convert.ToString(reader["username"]);
                user.Password = Convert.ToString(reader["password"]);
                user.FullName = Convert.ToString(reader["fullname"]);
                user.Email = Convert.ToString(reader["email"]);
                user.Permission = Convert.ToInt32(reader["permission"]);
                user.isActive = Convert.ToBoolean(reader["isActive"]);
                user.isEnable = Convert.ToBoolean(reader["isEnable"]);
            }
            conn.Close();
            return user;
        }
        catch
        {
            return null;
        }
    }

    public User getUser(int id)
    {
        try
        {
            string sql = "Select * from Users where id=@id";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader reader = cmd.ExecuteReader();

            if (!reader.HasRows)
                return null;

            User user = new User();
            while (reader.Read())
            {
                user.ID = Convert.ToInt32(reader["id"]);
                user.Username = Convert.ToString(reader["username"]);
                user.Password = Convert.ToString(reader["password"]);
                user.FullName = Convert.ToString(reader["fullname"]);
                user.Email = Convert.ToString(reader["email"]);
                user.Permission = Convert.ToInt32(reader["permission"]);
                user.isActive = Convert.ToBoolean(reader["isActive"]);
                user.isEnable = Convert.ToBoolean(reader["isEnable"]);
            }
            conn.Close();
            return user;
        }
        catch
        {
            return null;
        }
    }

    public List<int> timKiem(string searchStr)
    {
        conn.Open();
        string sql = "select id from doan where tendoan=@tendoan";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("tendoan", searchStr);
        SqlDataReader reader = cmd.ExecuteReader();

        List<int> list = new List<int>();

        while (reader.Read())
        {
            list.Add(Convert.ToInt32(reader["id"]));
        }
        conn.Close();
        return list;
    }

    public DoAn getDoAn(int id)
    {
        conn.Open();
        string sql = "select * from doan where id=@id";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("id", id);
        SqlDataReader reader = cmd.ExecuteReader();
        DoAn doan = new DoAn();
        while (reader.Read())
        {
            doan.ID = id;
            doan.TenDoAn = Convert.ToString(reader["tendoan"]);
            doan.AuthorID = Convert.ToString(reader["authorID"]);
            doan.MoTa = Convert.ToString(reader["mota"]);
        }
        conn.Close();
        return doan;
    }

    public void addUser(User user)
    {
        conn.Open();
        string sql = "insert into Users values(@username,@password,@fullname,@gioitinh,@email)";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("username", user.Username);
        cmd.Parameters.AddWithValue("password", user.Password);
        cmd.Parameters.AddWithValue("fullname", user.FullName);
        cmd.Parameters.AddWithValue("gioitinh", user.GioiTinh);
        cmd.Parameters.AddWithValue("email", user.Email);
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public DataTable getAllDoAn()
    {
        DataTable table = new DataTable();
        string sql = "select * from doan";
        SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
        adapter.Fill(table);
        return table;
    }

    public DataTable ExecuteDataTable(string sql)
    {
        DataTable table = new DataTable();
        SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
        adapter.Fill(table);
        return table;
    }
}