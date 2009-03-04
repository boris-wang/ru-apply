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

public partial class forgotpassword : System.Web.UI.Page
{
    //int ruid = 3;
    //int app_id = 3;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void usernameSubmit_click(object sender, EventArgs e)
    {
        //input these three info in the testboxs
        string USERNAME = TextBox1.Text;
        Session["USERNAME"] = USERNAME;

        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        //string MysqlConnection = "Data Source = RUapply; Initial Catalog = RUapply;Integrated Security = True";
        //System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(MysqlConnection);
        //myConnection.Open();
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        
        //insert function
        string SelectCommand = "SELECT question FROM login_db WHERE username = @USERNAME";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(SelectCommand, myConnection);
        cmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.NChar, 20).Value = USERNAME;

        string question = "";
        
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            question = Convert.ToString(reader["question"]);
            Label3.Text = "Question: ";
            Label1.Text = question;
            Label2.Text = "Answer: ";
            TextBox2.Visible = true;
            Button2.Visible = true;
        }
        else
        {
            Label3.Text = "Username not found.";
        }

        //cmd.ExecuteNonQuery();

        myConnection.Close();
    }
    protected void emailPassword_click(object sender, EventArgs e)
    {
        //input these three info in the testboxs
        string ANSWER = TextBox2.Text;
        string USERNAME = Convert.ToString(Session["USERNAME"]);

        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        //string MysqlConnection = "Data Source = RUapply; Initial Catalog = RUapply;Integrated Security = True";
        //System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(MysqlConnection);
        //myConnection.Open();
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        //insert function
        string SelectCommand = "SELECT answer FROM login_db WHERE username = @USERNAME";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(SelectCommand, myConnection);
        cmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.NChar, 20).Value = USERNAME;

        string SelectCommand2 = "SELECT password FROM login_db WHERE username = @USERNAME";
        System.Data.SqlClient.SqlCommand cmd2 = new System.Data.SqlClient.SqlCommand(SelectCommand2, myConnection);
        cmd2.Parameters.Add("@USERNAME", System.Data.SqlDbType.NChar, 20).Value = USERNAME;
        string answerfromdb = "";
        string passwordfromdb = "";

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            answerfromdb = Convert.ToString(reader["answer"]);
            reader.Close();
        }
        if (ANSWER == answerfromdb.TrimEnd())
        {
            reader = cmd2.ExecuteReader();
            if (reader.Read())
            {
                passwordfromdb = Convert.ToString(reader["password"]);
                Label4.Text = "Your password:" + passwordfromdb;
            }
            reader.Close();
            // email code goes here
        }
        else
            Label4.Text = "Incorrect answer. Please try again.";
        //cmd.ExecuteNonQuery();

        myConnection.Close();
    }
}
