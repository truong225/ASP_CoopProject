using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;

/// <summary>
/// Summary description for EncryptSecurity
/// </summary>
public static class EncryptSecurity
{
    public static string EncryptMD5Hash(string input)
    {
        MD5 md5 = System.Security.Cryptography.MD5.Create();

        byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);

        byte[] hash = md5.ComputeHash(inputBytes);

        // convert byte array to hex string

        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < hash.Length; i++)

        {
            sb.Append(hash[i].ToString("X2"));
        }

        return sb.ToString();
    }
}