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

public partial class defaultclass : System.Web.UI.Page
{
    //int ruid = 3;
    //int app_id = 3;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
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
        
        
        string SelectCommand = "SELECT * FROM login_db WHERE username = @USERNAME";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(SelectCommand, myConnection);
        cmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.NChar, 20).Value = USERNAME;

        string passwordfromdb = "";
        int role=0;
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            passwordfromdb = Convert.ToString(reader["password"]);
            role = Convert.ToInt16(reader["role"]);
            //Session["ruid"] = reader["ruid"];
        }
        reader.Close();
        if (PASSWORD == passwordfromdb.TrimEnd())
        {
            Session["LOGGEDIN"] = 1;
            if (role == 1)
            {
                Session["username"] = TextBox1.Text;

                string getCommand = "select * from login_db where (username = @USERNAME)";
                System.Data.SqlClient.SqlCommand gcmd = new System.Data.SqlClient.SqlCommand(getCommand, myConnection);
                gcmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.VarChar, 20).Value = USERNAME;
                SqlDataReader re = gcmd.ExecuteReader();
                if (re.Read())
                {
                    Session["ruid"] = re["ruid"];
                }

                re.Close(); 


                Response.Redirect("myaccount.aspx");
            }
            else if (role == 2)
            {
                Session["username"] = TextBox1.Text;

                string getCommand = "select * from login_db where (username = @USERNAME)";
                System.Data.SqlClient.SqlCommand gcmd = new System.Data.SqlClient.SqlCommand(getCommand, myConnection);
                gcmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.VarChar, 20).Value = USERNAME;
                SqlDataReader re = gcmd.ExecuteReader();
                if (re.Read())
                {
                    Session["ruid"] = re["ruid"];
                }

                re.Close(); 


                Response.Redirect("recommenderform.aspx");
            }
            else if (role == 3)
            {
                Session["username"] = TextBox1.Text;

                string getCommand = "select * from login_db where (username = @USERNAME)";
                System.Data.SqlClient.SqlCommand gcmd = new System.Data.SqlClient.SqlCommand(getCommand, myConnection);
                gcmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.VarChar, 20).Value = USERNAME;
                SqlDataReader re = gcmd.ExecuteReader();
                if (re.Read())
                {
                    Session["ruid"] = re["ruid"];
                }

                re.Close(); 


                Response.Redirect("admissions.aspx");
            }
        }
        else
            Label1.Text = "Invalid username or password. Please try again.";

        //cmd.ExecuteNonQuery();
        
        myConnection.Close();
    }
}
