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

public partial class myaccount : System.Web.UI.Page
{
    int ruid;
    string srcpage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["LOGGEDIN"]) == 0)
        {
            Response.Redirect("default.aspx");
        } //login protection
        Label1.Text = Session["username"].ToString();
        ruid = Convert.ToInt32(Session["ruid"]);
        Label2.Text = ruid.ToString();
        srcpage = Convert.ToString(Session["srcpg"]);
        if (srcpage == "reg")
            srcpg.Text = "Profile Updated.";
        if (srcpage == "app")
            srcpg.Text = "Application Submitted.";
    }
    protected void startnew_Click(object sender, EventArgs e)
    {
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //insert ruid and app_status = 1
        string InsertCommand1 = "insert into application (ruid,app_status) values (@ruid,@status)";
        System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand(InsertCommand1, myConnection);
        cmd1.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd1.Parameters.Add("@status", System.Data.SqlDbType.NChar).Value = "In Progress";

        /*read app_id from application table
        SqlCommand rtcmd = new SqlCommand("SELECT MAX(app_id) FROM application WHERE ruid = @ruid", myConnection);
        rtcmd.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
        SqlDataReader reader1 = rtcmd.ExecuteReader();
        //int appid = Convert.ToInt32(rtcmd.ExecuteReader());*/
        
        SqlCommand countcmd = new SqlCommand("select count(*) from application where ruid = @ruid", myConnection);
        countcmd.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
        int c = Convert.ToInt32(countcmd.ExecuteScalar());
        SqlCommand rtcmd = new SqlCommand("select app_id from application where ruid = @ruid", myConnection);
        rtcmd.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
        SqlDataReader reader = rtcmd.ExecuteReader();
        int appid = 14;
        int i;
        for (i = 0; i < c; i++)
        {
            if (i == c - 1)
                if (reader.Read())
                    appid = reader.GetInt32(0) + 1;
        }
        reader.Close();

        int gre, toefl;
        double gpa;
        string name, email;
        bool semail;
        gpa = 0.0;
        name = email = "0";
        gre = toefl = 0; //assign initial values to go through
        /*if (reader1.Read())
        {
            appid = Convert.ToInt32(reader1["app_id"]);
        }
        reader1.Close();*/

        //read email from login_db table
        SqlCommand rtcmd2 = new SqlCommand("SELECT * FROM login_db WHERE ruid = @ruid", myConnection);
        rtcmd2.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
        SqlDataReader reader2 = rtcmd2.ExecuteReader();
        if (reader2.Read())
        {
            email = Convert.ToString(reader2["email"]).Trim();
        }
        reader2.Close();

        //read name from bio_info table
        SqlCommand rtcmd3 = new SqlCommand("SELECT * FROM bio_info WHERE ruid = @ruid", myConnection);
        rtcmd3.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
        SqlDataReader reader3 = rtcmd3.ExecuteReader();
        if (reader3.Read())
        {
            //email = Convert.ToChar(reader3["email"]).Trim();
            name = Convert.ToString(reader3["f_name"]).Trim() +" " + Convert.ToString(reader3["l_name"]).Trim();
        }
        reader3.Close();

        //read gre, toefl from test_info table
        SqlCommand rtcmd4 = new SqlCommand("SELECT * FROM test_info WHERE ruid = @ruid", myConnection);
        rtcmd4.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
        SqlDataReader reader4 = rtcmd4.ExecuteReader();
        if (reader4.Read())
        {
            gre = Convert.ToInt32(reader4["gre_v"]) + Convert.ToInt32(reader4["gre_q"]);
            toefl = Convert.ToInt32(reader4["toefl_score"]);
        }
        reader4.Close();

        //read gpa from edu_info table
        SqlCommand rtcmd5 = new SqlCommand("SELECT * FROM edu_info WHERE ruid = @ruid", myConnection);
        rtcmd5.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
        SqlDataReader reader5 = rtcmd5.ExecuteReader();
        if (reader5.Read())
        {
            gpa = Convert.ToDouble(reader5["ins1_gpa"]);
        }
        reader5.Close();

        //insert info into admin_info table
        string InsertCommand2 = "insert into admin_info (ruid, app_id, name, gpa, gre, toefl, email, send_email) values (@ruid, @appid, @name, @gpa, @gre, @toefl, @email, @semail)";
        System.Data.SqlClient.SqlCommand cmd2 = new System.Data.SqlClient.SqlCommand(InsertCommand2, myConnection);
        cmd2.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd2.Parameters.Add("@appid", System.Data.SqlDbType.Int).Value = appid;
        cmd2.Parameters.Add("@name", System.Data.SqlDbType.Char).Value = name;
        cmd2.Parameters.Add("@gpa", System.Data.SqlDbType.Float).Value = gpa;
        cmd2.Parameters.Add("@gre", System.Data.SqlDbType.Int).Value = gre;
        cmd2.Parameters.Add("@toefl", System.Data.SqlDbType.Int).Value = toefl;
        cmd2.Parameters.Add("@email", System.Data.SqlDbType.Char).Value = email;
        cmd2.Parameters.Add("@semail", System.Data.SqlDbType.Bit).Value = false;

        cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery(); 
        myConnection.Close();
        Session["ruid"] = ruid;
        Session["app_id"] = appid;
        Session["name"] = name;
        Response.Redirect("userapplication.aspx");
    }
    protected void logoff_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
}
