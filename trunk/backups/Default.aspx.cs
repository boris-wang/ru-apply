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

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //input these three info in the testboxs
        string USERNAME = TextBox1.Text;
        string PASSWORD = TextBox2.Text;

        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        //System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(MysqlConnection);
        //myConnection.Open();
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();


        //insert function
        string SelectCommand = "SELECT * FROM login_db WHERE username = @USERNAME";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(SelectCommand, myConnection);
        cmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.NChar, 20).Value = USERNAME;

        string passwordfromdb="";
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            passwordfromdb = Convert.ToString(reader["password"]);
        }
        if (PASSWORD == passwordfromdb.TrimEnd())
            Response.Redirect("myaccount.aspx");
        else
            Label1.Text = "Invalid username or password. Please try again.";

        //cmd.ExecuteNonQuery();

        myConnection.Close();
        //Response.Redirect("usercreateconf.aspx");
    }
}
