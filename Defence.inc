<%
        if (Session["Login"] != null)
        {
            if (Session["Login"].ToString() != "OK")
            {
                Response.Redirect("Login.aspx");
            }
        }
        Response.Redirect("Login.aspx");
  %>