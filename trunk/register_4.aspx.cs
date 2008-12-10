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

public partial class register_4: System.Web.UI.Page
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

            SqlCommand rtcmd = new SqlCommand("select * from test_info where ruid = @ruid", myConnection);
            rtcmd.Parameters.Add("@ruid", SqlDbType.NChar).Value = RUID;
            SqlDataReader reader = rtcmd.ExecuteReader();

            if (reader.Read())
            {
                TextBox1.Text = Convert.ToString(reader["gre_v"]).Trim();
                TextBox2.Text = Convert.ToString(reader["gre_q"]).Trim();
                TextBox3.Text = Convert.ToString(reader["gre_aw"]).Trim();
                TextBox4.Text = Convert.ToString(reader["sub_score"]).Trim();
                TextBox5.Text = Convert.ToString(reader["gmat_total"]).Trim();
                TextBox6.Text = Convert.ToString(reader["gmat_aw"]).Trim();
                TextBox7.Text = Convert.ToString(reader["lsat_score"]).Trim();
                TextBox8.Text = Convert.ToString(reader["tse_score"]).Trim();
                TextBox9.Text = Convert.ToString(reader["toefl_score"]).Trim();
                TextBox10.Text = Convert.ToString(reader["ielts_score"]).Trim();

                DropDownList1.Text = Convert.ToString(reader["gre_date_mm"]).Trim();
                DropDownList2.Text = Convert.ToString(reader["gre_date_yyyy"]).Trim();
                DropDownList3.Text = Convert.ToString(reader["sub_date_mm"]).Trim();
                DropDownList4.Text = Convert.ToString(reader["sub_date_yyyy"]).Trim();
                DropDownList5.Text = Convert.ToString(reader["sub_major"]).Trim();
                DropDownList6.Text = Convert.ToString(reader["gmat_date_mm"]).Trim();
                DropDownList7.Text = Convert.ToString(reader["gmat_date_yyyy"]).Trim();
                DropDownList8.Text = Convert.ToString(reader["lsat_date_mm"]).Trim();
                DropDownList9.Text = Convert.ToString(reader["lsat_date_yyyy"]).Trim();
                DropDownList10.Text = Convert.ToString(reader["toefl_date_mm"]).Trim();
                DropDownList11.Text = Convert.ToString(reader["toefl_date_yyyy"]).Trim();
                DropDownList12.Text = Convert.ToString(reader["ielts_date_mm"]).Trim();
                DropDownList13.Text = Convert.ToString(reader["ielts_date_yyyy"]).Trim();
                DropDownList14.Text = Convert.ToString(reader["tse_date_mm"]).Trim();
                DropDownList15.Text = Convert.ToString(reader["tse_date_yyyy"]).Trim();

            }

            myConnection.Close();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("register_3.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);
        string gre_date_mm = DropDownList1.Text.Trim();
        string gre_date_yyyy = DropDownList2.Text.Trim();
        string gre_v = TextBox1.Text.Trim();
        string gre_q = TextBox2.Text.Trim();
        string gre_aw = TextBox3.Text.Trim(); ;
        string sub_date_mm = DropDownList3.Text.Trim();
        string sub_date_yyyy = DropDownList4.Text.Trim();
        string sub_score = TextBox4.Text.Trim();
        string sub_major = DropDownList5.Text.Trim();
        string gmat_date_mm = DropDownList6.Text.Trim();
        string gmat_date_yyyy = DropDownList7.Text.Trim();
        string gmat_total = TextBox5.Text.Trim();
        string gmat_aw = TextBox6.Text.Trim();
        string lsat_date_mm = DropDownList8.Text.Trim();
        string lsat_date_yyyy = DropDownList9.Text.Trim();
        string lsat_score = TextBox7.Text.Trim();
        string toefl_date_mm = DropDownList10.Text.Trim();
        string toefl_date_yyyy = DropDownList11.Text.Trim();
        string toefl_score = TextBox9.Text.Trim();
        string ielts_date_mm = DropDownList12.Text.Trim();
        string ielts_date_yyyy = DropDownList13.Text.Trim();
        string ielts_score = TextBox10.Text.Trim();
        string tse_date_mm = DropDownList14.Text.Trim();
        string tse_date_yyyy = DropDownList15.Text.Trim();
        string tse_score = TextBox8.Text.Trim();
        string toefl_type = "";

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        string updateCommand = "update test_info set gre_date_mm = @gre_date_mm,gre_date_yyyy = @gre_date_yyyy,gre_v = @gre_v, gre_q = @gre_q, gre_aw = @gre_aw, sub_date_mm = @sub_date_mm, sub_date_yyyy = @sub_date_yyyy,sub_score = @sub_score, sub_major = @sub_major, gmat_date_mm = @gmat_date_mm, gmat_date_yyyy = @gmat_date_yyyy, gmat_total = @gmat_total, gmat_aw = @gmat_aw, lsat_date_mm = @lsat_date_mm, lsat_date_yyyy=@lsat_date_yyyy,lsat_score=@lsat_score,toefl_date_mm=@toefl_date_mm,toefl_date_yyyy=@toefl_date_yyyy,toefl_score=@toefl_score,ielts_date_mm=@ielts_date_mm,ielts_date_yyyy=@ielts_date_yyyy,ielts_score=@ielts_score,tse_date_mm=@tse_date_mm,tse_date_yyyy=@tse_date_yyyy,tse_score= @tse_score where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@gre_date_mm", System.Data.SqlDbType.NChar).Value = gre_date_mm;
        cmd.Parameters.Add("@gre_date_yyyy", System.Data.SqlDbType.NChar).Value = gre_date_yyyy;
        cmd.Parameters.Add("@gre_v", System.Data.SqlDbType.NChar).Value = gre_v;
        cmd.Parameters.Add("@gre_q", System.Data.SqlDbType.NChar).Value = gre_q;
        cmd.Parameters.Add("@gre_aw", System.Data.SqlDbType.NChar).Value = gre_aw;
        cmd.Parameters.Add("@sub_date_mm", System.Data.SqlDbType.NChar).Value = sub_date_mm;
        cmd.Parameters.Add("@sub_date_yyyy", System.Data.SqlDbType.NChar).Value = sub_date_yyyy;
        cmd.Parameters.Add("@sub_score", System.Data.SqlDbType.NChar).Value = sub_score;
        cmd.Parameters.Add("@sub_major", System.Data.SqlDbType.NChar).Value = sub_major;
        cmd.Parameters.Add("@gmat_date_mm", System.Data.SqlDbType.NChar).Value = gmat_date_mm;
        cmd.Parameters.Add("@gmat_date_yyyy", System.Data.SqlDbType.NChar).Value = gmat_date_yyyy;
        cmd.Parameters.Add("@gmat_total", System.Data.SqlDbType.NChar).Value = gmat_total;
        cmd.Parameters.Add("@gmat_aw", System.Data.SqlDbType.NChar).Value = gmat_aw;
        cmd.Parameters.Add("@lsat_date_mm", System.Data.SqlDbType.NChar).Value = lsat_date_mm;
        cmd.Parameters.Add("@lsat_date_yyyy", System.Data.SqlDbType.NChar).Value = lsat_date_yyyy;
        cmd.Parameters.Add("@lsat_score", System.Data.SqlDbType.NChar).Value = lsat_score;
        cmd.Parameters.Add("@toefl_date_mm", System.Data.SqlDbType.NChar).Value = toefl_date_mm;
        cmd.Parameters.Add("@toefl_date_yyyy", System.Data.SqlDbType.NChar).Value = toefl_date_yyyy;
        cmd.Parameters.Add("@toefl_score", System.Data.SqlDbType.NChar).Value = toefl_score;
        cmd.Parameters.Add("@ielts_date_mm", System.Data.SqlDbType.NChar).Value = ielts_date_mm;
        cmd.Parameters.Add("@ielts_date_yyyy", System.Data.SqlDbType.NChar).Value = ielts_date_yyyy;
        cmd.Parameters.Add("@ielts_score", System.Data.SqlDbType.NChar).Value = ielts_score;
        cmd.Parameters.Add("@tse_date_mm", System.Data.SqlDbType.NChar).Value = tse_date_mm;
        cmd.Parameters.Add("@tse_date_yyyy", System.Data.SqlDbType.NChar).Value = tse_date_yyyy;
        cmd.Parameters.Add("@tse_score", System.Data.SqlDbType.NChar).Value = tse_score;
        cmd.Parameters.Add("@toefl_type", System.Data.SqlDbType.NChar).Value = toefl_type;

        cmd.ExecuteNonQuery();
        myConnection.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);
        string gre_date_mm = DropDownList1.Text.Trim();
        string gre_date_yyyy = DropDownList2.Text.Trim();
        string gre_v = TextBox1.Text.Trim();
        string gre_q = TextBox2.Text.Trim();
        string gre_aw = TextBox3.Text.Trim(); ;
        string sub_date_mm = DropDownList3.Text.Trim();
        string sub_date_yyyy = DropDownList4.Text.Trim();
        string sub_score = TextBox4.Text.Trim();
        string sub_major = DropDownList5.Text.Trim();
        string gmat_date_mm = DropDownList6.Text.Trim();
        string gmat_date_yyyy = DropDownList7.Text.Trim();
        string gmat_total = TextBox5.Text.Trim();
        string gmat_aw = TextBox6.Text.Trim();
        string lsat_date_mm = DropDownList8.Text.Trim();
        string lsat_date_yyyy = DropDownList9.Text.Trim();
        string lsat_score = TextBox7.Text.Trim();
        string toefl_date_mm = DropDownList10.Text.Trim();
        string toefl_date_yyyy = DropDownList11.Text.Trim();
        string toefl_score = TextBox9.Text.Trim();
        string ielts_date_mm = DropDownList12.Text.Trim();
        string ielts_date_yyyy = DropDownList13.Text.Trim();
        string ielts_score = TextBox10.Text.Trim();
        string tse_date_mm = DropDownList14.Text.Trim();
        string tse_date_yyyy = DropDownList15.Text.Trim();
        string tse_score = TextBox8.Text.Trim();
        string toefl_type = "";

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        string updateCommand = "update test_info set gre_date_mm = @gre_date_mm,gre_date_yyyy = @gre_date_yyyy,gre_v = @gre_v, gre_q = @gre_q, gre_aw = @gre_aw, sub_date_mm = @sub_date_mm, sub_date_yyyy = @sub_date_yyyy,sub_score = @sub_score, sub_major = @sub_major, gmat_date_mm = @gmat_date_mm, gmat_date_yyyy = @gmat_date_yyyy, gmat_total = @gmat_total, gmat_aw = @gmat_aw, lsat_date_mm = @lsat_date_mm, lsat_date_yyyy=@lsat_date_yyyy,lsat_score=@lsat_score,toefl_date_mm=@toefl_date_mm,toefl_date_yyyy=@toefl_date_yyyy,toefl_score=@toefl_score,ielts_date_mm=@ielts_date_mm,ielts_date_yyyy=@ielts_date_yyyy,ielts_score=@ielts_score,tse_date_mm=@tse_date_mm,tse_date_yyyy=@tse_date_yyyy,tse_score= @tse_score where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@gre_date_mm", System.Data.SqlDbType.NChar).Value = gre_date_mm;
        cmd.Parameters.Add("@gre_date_yyyy", System.Data.SqlDbType.NChar).Value = gre_date_yyyy;
        cmd.Parameters.Add("@gre_v", System.Data.SqlDbType.NChar).Value = gre_v;
        cmd.Parameters.Add("@gre_q", System.Data.SqlDbType.NChar).Value = gre_q;
        cmd.Parameters.Add("@gre_aw", System.Data.SqlDbType.NChar).Value = gre_aw;
        cmd.Parameters.Add("@sub_date_mm", System.Data.SqlDbType.NChar).Value = sub_date_mm;
        cmd.Parameters.Add("@sub_date_yyyy", System.Data.SqlDbType.NChar).Value = sub_date_yyyy;
        cmd.Parameters.Add("@sub_score", System.Data.SqlDbType.NChar).Value = sub_score;
        cmd.Parameters.Add("@sub_major", System.Data.SqlDbType.NChar).Value = sub_major;
        cmd.Parameters.Add("@gmat_date_mm", System.Data.SqlDbType.NChar).Value = gmat_date_mm;
        cmd.Parameters.Add("@gmat_date_yyyy", System.Data.SqlDbType.NChar).Value = gmat_date_yyyy;
        cmd.Parameters.Add("@gmat_total", System.Data.SqlDbType.NChar).Value = gmat_total;
        cmd.Parameters.Add("@gmat_aw", System.Data.SqlDbType.NChar).Value = gmat_aw;
        cmd.Parameters.Add("@lsat_date_mm", System.Data.SqlDbType.NChar).Value = lsat_date_mm;
        cmd.Parameters.Add("@lsat_date_yyyy", System.Data.SqlDbType.NChar).Value = lsat_date_yyyy;
        cmd.Parameters.Add("@lsat_score", System.Data.SqlDbType.NChar).Value = lsat_score;
        cmd.Parameters.Add("@toefl_date_mm", System.Data.SqlDbType.NChar).Value = toefl_date_mm;
        cmd.Parameters.Add("@toefl_date_yyyy", System.Data.SqlDbType.NChar).Value = toefl_date_yyyy;
        cmd.Parameters.Add("@toefl_score", System.Data.SqlDbType.NChar).Value = toefl_score;
        cmd.Parameters.Add("@ielts_date_mm", System.Data.SqlDbType.NChar).Value = ielts_date_mm;
        cmd.Parameters.Add("@ielts_date_yyyy", System.Data.SqlDbType.NChar).Value = ielts_date_yyyy;
        cmd.Parameters.Add("@ielts_score", System.Data.SqlDbType.NChar).Value = ielts_score;
        cmd.Parameters.Add("@tse_date_mm", System.Data.SqlDbType.NChar).Value = tse_date_mm;
        cmd.Parameters.Add("@tse_date_yyyy", System.Data.SqlDbType.NChar).Value = tse_date_yyyy;
        cmd.Parameters.Add("@tse_score", System.Data.SqlDbType.NChar).Value = tse_score;
        cmd.Parameters.Add("@toefl_type", System.Data.SqlDbType.NChar).Value = toefl_type;

        cmd.ExecuteNonQuery();
        myConnection.Close();
        string pgsrc = "reg";
        Session["srcpg"] = pgsrc;
        Response.Redirect("myaccount.aspx");
    }
}