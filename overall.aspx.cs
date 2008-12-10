using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


    public partial class overall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt16(Session["LOGGEDIN"]) == 0)
            {
                Response.Redirect("default.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.close();</script>");
        }
    }

