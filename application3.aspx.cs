using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class application3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void uploadPS_Click(object sender, EventArgs e)
    {

    }
    protected void previouspage_Click(object sender, EventArgs e)
    {
        Response.Redirect("application2.aspx");
    }
    protected void save_Click(object sender, EventArgs e)
    {

    }
    protected void nextpage_Click(object sender, EventArgs e)
    {
        Response.Redirect("recommendation.aspx");
    }
}
