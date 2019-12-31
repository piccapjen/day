using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Class1 的摘要描述
/// </summary>
public class Class1
{   
        public static void Defense()
        {
        if (HttpContext.Current.Session["Login"].ToString() != "OK")
            {
                HttpContext.Current.Response.Redirect("Login.aspx");
            }
        
        }
}