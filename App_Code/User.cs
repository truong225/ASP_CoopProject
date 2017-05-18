using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    public int ID { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string FullName { get; set; }
    public string GioiTinh { get; set; }
    public string Email { get; set; }
    public int Permission { get; set; }
    public bool isActive { get; set; }
    public bool isEnable { get; set; }

    public User()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}