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

public partial class register_3 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);

        if (Convert.ToInt16(Session["LOGGEDIN"]) == 0)
        {
            Response.Redirect("default.aspx");
        }
        if (!this.IsPostBack)
        {
            string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";

            SqlConnection myConnection = new SqlConnection(MysqlConnection);
            myConnection.Open();

            SqlCommand rtcmd = new SqlCommand("select * from edu_info where ruid = @ruid", myConnection);
            rtcmd.Parameters.Add("@ruid", SqlDbType.NChar).Value = RUID;
            SqlDataReader reader = rtcmd.ExecuteReader();

            if (reader.Read())
            {
                TextBox1.Text = Convert.ToString(reader["ins1_name"]).Trim();
                TextBox2.Text = Convert.ToString(reader["ins1_city"]).Trim();
                TextBox3.Text = Convert.ToString(reader["ins1_state"]).Trim();
                TextBox4.Text = Convert.ToString(reader["ins1_gpa"]).Trim();
                TextBox5.Text = Convert.ToString(reader["ins1_avescore"]).Trim();
                TextBox6.Text = Convert.ToString(reader["ins1_major"]).Trim();
                DropDownList1.Text = Convert.ToString(reader["ins1_country"]).Trim();
                DropDownList2.Text = Convert.ToString(reader["ins1_mmfrom"]).Trim();
                DropDownList3.Text = Convert.ToString(reader["ins1_yyyyfrom"]).Trim();
                DropDownList4.Text = Convert.ToString(reader["ins1_degree"]).Trim();
                DropDownList5.Text = Convert.ToString(reader["ins1_deg_date_mm"]).Trim();
                DropDownList6.Text = Convert.ToString(reader["ins1_deg_date_yyyy"]).Trim();

                TextBox7.Text = Convert.ToString(reader["ins2_name"]).Trim();
                TextBox8.Text = Convert.ToString(reader["ins2_city"]).Trim();
                TextBox9.Text = Convert.ToString(reader["ins2_state"]).Trim();
                TextBox10.Text = Convert.ToString(reader["ins2_gpa"]).Trim();
                TextBox11.Text = Convert.ToString(reader["ins2_avescore"]).Trim();
                TextBox12.Text = Convert.ToString(reader["ins2_major"]).Trim();
                DropDownList7.Text = Convert.ToString(reader["ins2_country"]).Trim();
                DropDownList8.Text = Convert.ToString(reader["ins2_mmfrom"]).Trim();
                DropDownList9.Text = Convert.ToString(reader["ins2_yyyyfrom"]).Trim();
                DropDownList10.Text = Convert.ToString(reader["ins2_degree"]).Trim();
                DropDownList11.Text = Convert.ToString(reader["ins2_deg_date_mm"]).Trim();
                DropDownList12.Text = Convert.ToString(reader["ins2_deg_date_yyyy"]).Trim();

                TextBox13.Text = Convert.ToString(reader["ins3_name"]).Trim();
                TextBox14.Text = Convert.ToString(reader["ins3_city"]).Trim();
                TextBox15.Text = Convert.ToString(reader["ins3_state"]).Trim();
                TextBox16.Text = Convert.ToString(reader["ins3_gpa"]).Trim();
                TextBox17.Text = Convert.ToString(reader["ins3_avescore"]).Trim();
                TextBox18.Text = Convert.ToString(reader["ins3_major"]).Trim();

                DropDownList13.Text = Convert.ToString(reader["ins3_country"]).Trim();
                DropDownList14.Text = Convert.ToString(reader["ins3_mmfrom"]).Trim();
                DropDownList15.Text = Convert.ToString(reader["ins3_yyyyfrom"]).Trim();
                DropDownList16.Text = Convert.ToString(reader["ins3_degree"]).Trim();
                DropDownList17.Text = Convert.ToString(reader["ins3_deg_date_mm"]).Trim();
                DropDownList18.Text = Convert.ToString(reader["ins3_deg_date_yyyy"]).Trim();
            }

            myConnection.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register_2.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);

        string ins1_name = TextBox1.Text.Trim();
        string ins1_city = TextBox2.Text.Trim();
        string ins1_state = TextBox3.Text.Trim();
        string ins1_country = DropDownList1.Text.Trim();
        string ins1_mmfrom = DropDownList2.Text.Trim();
        string ins1_yyyyfrom = DropDownList3.Text.Trim();
        string ins1_gpa = TextBox4.Text.Trim();
        string ins1_avescore = TextBox5.Text.Trim();
        string ins1_major = TextBox6.Text.Trim();
        string ins1_degree = DropDownList4.Text.Trim();
        string ins1_deg_date_mm = DropDownList5.Text.Trim();
        string ins1_deg_date_yyyy = DropDownList6.Text.Trim();

        string ins2_name = TextBox7.Text.Trim();
        string ins2_city = TextBox8.Text.Trim();
        string ins2_state = TextBox9.Text.Trim();
        string ins2_country = DropDownList7.Text.Trim();
        string ins2_mmfrom = DropDownList8.Text.Trim();
        string ins2_yyyyfrom = DropDownList9.Text.Trim();
        string ins2_gpa = TextBox10.Text.Trim();
        string ins2_avescore = TextBox11.Text.Trim();
        string ins2_major = TextBox12.Text.Trim();
        string ins2_degree = DropDownList10.Text.Trim();
        string ins2_deg_date_mm = DropDownList11.Text.Trim();
        string ins2_deg_date_yyyy = DropDownList12.Text.Trim();

        string ins3_name = TextBox13.Text.Trim();
        string ins3_city = TextBox14.Text.Trim();
        string ins3_state = TextBox15.Text.Trim();
        string ins3_country = DropDownList13.Text.Trim();
        string ins3_mmfrom = DropDownList14.Text.Trim();
        string ins3_yyyyfrom = DropDownList15.Text.Trim();
        string ins3_gpa = TextBox16.Text.Trim();
        string ins3_avescore = TextBox17.Text.Trim();
        string ins3_major = TextBox18.Text.Trim();
        string ins3_degree = DropDownList16.Text.Trim();
        string ins3_deg_date_mm = DropDownList17.Text.Trim();
        string ins3_deg_date_yyyy = DropDownList18.Text.Trim();

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        string updateCommand = "update edu_info set ins1_name = @ins1_name,ins1_city = @ins1_city,ins1_state= @ins1_state, ins1_country = @ins1_country, ins1_mmfrom = @ins1_mmfrom, ins1_yyyyfrom = @ins1_yyyyfrom, ins1_gpa = @ins1_gpa,ins1_avescore = @ins1_avescore,ins1_major = @ins1_major, ins1_degree = @ins1_degree, ins1_deg_date_mm = @ins1_deg_date_mm, ins1_deg_date_yyyy = @ins1_deg_date_yyyy, ins2_name = @ins2_name,ins2_city = @ins2_city,ins2_state= @ins2_state, ins2_country = @ins2_country, ins2_mmfrom = @ins2_mmfrom, ins2_yyyyfrom = @ins2_yyyyfrom, ins2_gpa = @ins2_gpa,ins2_avescore = @ins2_avescore,ins2_major = @ins2_major, ins2_degree = @ins2_degree, ins2_deg_date_mm = @ins2_deg_date_mm, ins2_deg_date_yyyy = @ins2_deg_date_yyyy,ins3_name = @ins3_name,ins3_city = @ins3_city,ins3_state= @ins3_state, ins3_country = @ins3_country, ins3_mmfrom = @ins3_mmfrom, ins3_yyyyfrom = @ins3_yyyyfrom, ins3_gpa = @ins3_gpa,ins3_avescore = @ins3_avescore,ins3_major = @ins3_major, ins3_degree = @ins3_degree, ins3_deg_date_mm = @ins3_deg_date_mm, ins3_deg_date_yyyy = @ins3_deg_date_yyyy where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@ins1_name", System.Data.SqlDbType.NChar).Value = ins1_name;
        cmd.Parameters.Add("@ins1_city", System.Data.SqlDbType.NChar).Value = ins1_city;
        cmd.Parameters.Add("@ins1_state", System.Data.SqlDbType.NChar).Value = ins1_state;
        cmd.Parameters.Add("@ins1_country", System.Data.SqlDbType.NChar).Value = ins1_country;
        cmd.Parameters.Add("@ins1_mmfrom", System.Data.SqlDbType.NChar).Value = ins1_mmfrom;
        cmd.Parameters.Add("@ins1_yyyyfrom", System.Data.SqlDbType.NChar).Value = ins1_yyyyfrom;
        cmd.Parameters.Add("@ins1_gpa", System.Data.SqlDbType.NChar).Value = ins1_gpa;
        cmd.Parameters.Add("@ins1_avescore", System.Data.SqlDbType.NChar).Value = ins1_avescore;
        cmd.Parameters.Add("@ins1_major", System.Data.SqlDbType.NChar).Value = ins1_major;
        cmd.Parameters.Add("@ins1_degree", System.Data.SqlDbType.NChar).Value = ins1_degree;
        cmd.Parameters.Add("@ins1_deg_date_mm", System.Data.SqlDbType.NChar).Value = ins1_deg_date_mm;
        cmd.Parameters.Add("@ins1_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = ins1_deg_date_yyyy;

        cmd.Parameters.Add("@ins2_name", System.Data.SqlDbType.NChar).Value = ins2_name;
        cmd.Parameters.Add("@ins2_city", System.Data.SqlDbType.NChar).Value = ins2_city;
        cmd.Parameters.Add("@ins2_state", System.Data.SqlDbType.NChar).Value = ins2_state;
        cmd.Parameters.Add("@ins2_country", System.Data.SqlDbType.NChar).Value = ins2_country;
        cmd.Parameters.Add("@ins2_mmfrom", System.Data.SqlDbType.NChar).Value = ins2_mmfrom;
        cmd.Parameters.Add("@ins2_yyyyfrom", System.Data.SqlDbType.NChar).Value = ins2_yyyyfrom;
        cmd.Parameters.Add("@ins2_gpa", System.Data.SqlDbType.NChar).Value = ins2_gpa;
        cmd.Parameters.Add("@ins2_avescore", System.Data.SqlDbType.NChar).Value = ins2_avescore;
        cmd.Parameters.Add("@ins2_major", System.Data.SqlDbType.NChar).Value = ins2_major;
        cmd.Parameters.Add("@ins2_degree", System.Data.SqlDbType.NChar).Value = ins2_degree;
        cmd.Parameters.Add("@ins2_deg_date_mm", System.Data.SqlDbType.NChar).Value = ins2_deg_date_mm;
        cmd.Parameters.Add("@ins2_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = ins2_deg_date_yyyy;

        cmd.Parameters.Add("@ins3_name", System.Data.SqlDbType.NChar).Value = ins3_name;
        cmd.Parameters.Add("@ins3_city", System.Data.SqlDbType.NChar).Value = ins3_city;
        cmd.Parameters.Add("@ins3_state", System.Data.SqlDbType.NChar).Value = ins3_state;
        cmd.Parameters.Add("@ins3_country", System.Data.SqlDbType.NChar).Value = ins3_country;
        cmd.Parameters.Add("@ins3_mmfrom", System.Data.SqlDbType.NChar).Value = ins3_mmfrom;
        cmd.Parameters.Add("@ins3_yyyyfrom", System.Data.SqlDbType.NChar).Value = ins3_yyyyfrom;
        cmd.Parameters.Add("@ins3_gpa", System.Data.SqlDbType.NChar).Value = ins3_gpa;
        cmd.Parameters.Add("@ins3_avescore", System.Data.SqlDbType.NChar).Value = ins3_avescore;
        cmd.Parameters.Add("@ins3_major", System.Data.SqlDbType.NChar).Value = ins3_major;
        cmd.Parameters.Add("@ins3_degree", System.Data.SqlDbType.NChar).Value = ins3_degree;
        cmd.Parameters.Add("@ins3_deg_date_mm", System.Data.SqlDbType.NChar).Value = ins3_deg_date_mm;
        cmd.Parameters.Add("@ins3_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = ins3_deg_date_yyyy;

        cmd.ExecuteNonQuery();
        myConnection.Close();

        Response.Redirect("register_4.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);

        string ins1_name = TextBox1.Text.Trim();
        string ins1_city = TextBox2.Text.Trim();
        string ins1_state = TextBox3.Text.Trim();
        string ins1_country = DropDownList1.Text.Trim();
        string ins1_mmfrom = DropDownList2.Text.Trim();
        string ins1_yyyyfrom = DropDownList3.Text.Trim();
        string ins1_gpa = TextBox4.Text.Trim();
        string ins1_avescore = TextBox5.Text.Trim();
        string ins1_major = TextBox6.Text.Trim();
        string ins1_degree = DropDownList4.Text.Trim();
        string ins1_deg_date_mm = DropDownList5.Text.Trim();
        string ins1_deg_date_yyyy = DropDownList6.Text.Trim();

        string ins2_name = TextBox7.Text.Trim();
        string ins2_city = TextBox8.Text.Trim();
        string ins2_state = TextBox9.Text.Trim();
        string ins2_country = DropDownList7.Text.Trim();
        string ins2_mmfrom = DropDownList8.Text.Trim();
        string ins2_yyyyfrom = DropDownList9.Text.Trim();
        string ins2_gpa = TextBox10.Text.Trim();
        string ins2_avescore = TextBox11.Text.Trim();
        string ins2_major = TextBox12.Text.Trim();
        string ins2_degree = DropDownList10.Text.Trim();
        string ins2_deg_date_mm = DropDownList11.Text.Trim();
        string ins2_deg_date_yyyy = DropDownList12.Text.Trim();

        string ins3_name = TextBox13.Text.Trim();
        string ins3_city = TextBox14.Text.Trim();
        string ins3_state = TextBox15.Text.Trim();
        string ins3_country = DropDownList13.Text.Trim();
        string ins3_mmfrom = DropDownList14.Text.Trim();
        string ins3_yyyyfrom = DropDownList15.Text.Trim();
        string ins3_gpa = TextBox16.Text.Trim();
        string ins3_avescore = TextBox17.Text.Trim();
        string ins3_major = TextBox18.Text.Trim();
        string ins3_degree = DropDownList16.Text.Trim();
        string ins3_deg_date_mm = DropDownList17.Text.Trim();
        string ins3_deg_date_yyyy = DropDownList18.Text.Trim();

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        string updateCommand = "update edu_info set ins1_name = @ins1_name,ins1_city = @ins1_city,ins1_state= @ins1_state, ins1_country = @ins1_country, ins1_mmfrom = @ins1_mmfrom, ins1_yyyyfrom = @ins1_yyyyfrom, ins1_gpa = @ins1_gpa,ins1_avescore = @ins1_avescore,ins1_major = @ins1_major, ins1_degree = @ins1_degree, ins1_deg_date_mm = @ins1_deg_date_mm, ins1_deg_date_yyyy = @ins1_deg_date_yyyy, ins2_name = @ins2_name,ins2_city = @ins2_city,ins2_state= @ins2_state, ins2_country = @ins2_country, ins2_mmfrom = @ins2_mmfrom, ins2_yyyyfrom = @ins2_yyyyfrom, ins2_gpa = @ins2_gpa,ins2_avescore = @ins2_avescore,ins2_major = @ins2_major, ins2_degree = @ins2_degree, ins2_deg_date_mm = @ins2_deg_date_mm, ins2_deg_date_yyyy = @ins2_deg_date_yyyy,ins3_name = @ins3_name,ins3_city = @ins3_city,ins3_state= @ins3_state, ins3_country = @ins3_country, ins3_mmfrom = @ins3_mmfrom, ins3_yyyyfrom = @ins3_yyyyfrom, ins3_gpa = @ins3_gpa,ins3_avescore = @ins3_avescore,ins3_major = @ins3_major, ins3_degree = @ins3_degree, ins3_deg_date_mm = @ins3_deg_date_mm, ins3_deg_date_yyyy = @ins3_deg_date_yyyy where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@ins1_name", System.Data.SqlDbType.NChar).Value = ins1_name;
        cmd.Parameters.Add("@ins1_city", System.Data.SqlDbType.NChar).Value = ins1_city;
        cmd.Parameters.Add("@ins1_state", System.Data.SqlDbType.NChar).Value = ins1_state;
        cmd.Parameters.Add("@ins1_country", System.Data.SqlDbType.NChar).Value = ins1_country;
        cmd.Parameters.Add("@ins1_mmfrom", System.Data.SqlDbType.NChar).Value = ins1_mmfrom;
        cmd.Parameters.Add("@ins1_yyyyfrom", System.Data.SqlDbType.NChar).Value = ins1_yyyyfrom;
        cmd.Parameters.Add("@ins1_gpa", System.Data.SqlDbType.NChar).Value = ins1_gpa;
        cmd.Parameters.Add("@ins1_avescore", System.Data.SqlDbType.NChar).Value = ins1_avescore;
        cmd.Parameters.Add("@ins1_major", System.Data.SqlDbType.NChar).Value = ins1_major;
        cmd.Parameters.Add("@ins1_degree", System.Data.SqlDbType.NChar).Value = ins1_degree;
        cmd.Parameters.Add("@ins1_deg_date_mm", System.Data.SqlDbType.NChar).Value = ins1_deg_date_mm;
        cmd.Parameters.Add("@ins1_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = ins1_deg_date_yyyy;

        cmd.Parameters.Add("@ins2_name", System.Data.SqlDbType.NChar).Value = ins2_name;
        cmd.Parameters.Add("@ins2_city", System.Data.SqlDbType.NChar).Value = ins2_city;
        cmd.Parameters.Add("@ins2_state", System.Data.SqlDbType.NChar).Value = ins2_state;
        cmd.Parameters.Add("@ins2_country", System.Data.SqlDbType.NChar).Value = ins2_country;
        cmd.Parameters.Add("@ins2_mmfrom", System.Data.SqlDbType.NChar).Value = ins2_mmfrom;
        cmd.Parameters.Add("@ins2_yyyyfrom", System.Data.SqlDbType.NChar).Value = ins2_yyyyfrom;
        cmd.Parameters.Add("@ins2_gpa", System.Data.SqlDbType.NChar).Value = ins2_gpa;
        cmd.Parameters.Add("@ins2_avescore", System.Data.SqlDbType.NChar).Value = ins2_avescore;
        cmd.Parameters.Add("@ins2_major", System.Data.SqlDbType.NChar).Value = ins2_major;
        cmd.Parameters.Add("@ins2_degree", System.Data.SqlDbType.NChar).Value = ins2_degree;
        cmd.Parameters.Add("@ins2_deg_date_mm", System.Data.SqlDbType.NChar).Value = ins2_deg_date_mm;
        cmd.Parameters.Add("@ins2_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = ins2_deg_date_yyyy;

        cmd.Parameters.Add("@ins3_name", System.Data.SqlDbType.NChar).Value = ins3_name;
        cmd.Parameters.Add("@ins3_city", System.Data.SqlDbType.NChar).Value = ins3_city;
        cmd.Parameters.Add("@ins3_state", System.Data.SqlDbType.NChar).Value = ins3_state;
        cmd.Parameters.Add("@ins3_country", System.Data.SqlDbType.NChar).Value = ins3_country;
        cmd.Parameters.Add("@ins3_mmfrom", System.Data.SqlDbType.NChar).Value = ins3_mmfrom;
        cmd.Parameters.Add("@ins3_yyyyfrom", System.Data.SqlDbType.NChar).Value = ins3_yyyyfrom;
        cmd.Parameters.Add("@ins3_gpa", System.Data.SqlDbType.NChar).Value = ins3_gpa;
        cmd.Parameters.Add("@ins3_avescore", System.Data.SqlDbType.NChar).Value = ins3_avescore;
        cmd.Parameters.Add("@ins3_major", System.Data.SqlDbType.NChar).Value = ins3_major;
        cmd.Parameters.Add("@ins3_degree", System.Data.SqlDbType.NChar).Value = ins3_degree;
        cmd.Parameters.Add("@ins3_deg_date_mm", System.Data.SqlDbType.NChar).Value = ins3_deg_date_mm;
        cmd.Parameters.Add("@ins3_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = ins3_deg_date_yyyy;

        cmd.ExecuteNonQuery();
        myConnection.Close();

    }
}