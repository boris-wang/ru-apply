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

public partial class register_2 : System.Web.UI.Page
{
    protected void Page_load(object sender, EventArgs e)
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

            SqlCommand rtcmd = new SqlCommand("select * from contact_info where ruid = @ruid", myConnection);
            rtcmd.Parameters.Add("@ruid", SqlDbType.NChar).Value = RUID;
            SqlDataReader reader = rtcmd.ExecuteReader();

            if (reader.Read())
            {
                TextBox1.Text = Convert.ToString(reader["mail_add1"]).Trim();
                TextBox2.Text = Convert.ToString(reader["mail_add2"]).Trim();
                TextBox3.Text = Convert.ToString(reader["mail_city"]).Trim();
                TextBox4.Text = Convert.ToString(reader["mail_state"]).Trim();
                TextBox5.Text = Convert.ToString(reader["mail_zip"]).Trim();
                TextBox6.Text = Convert.ToString(reader["phone1"]).Trim();
                TextBox7.Text = Convert.ToString(reader["per_add1"]).Trim();
                TextBox8.Text = Convert.ToString(reader["per_add2"]).Trim();
                TextBox9.Text = Convert.ToString(reader["per_city"]).Trim();
                TextBox10.Text = Convert.ToString(reader["per_state"]).Trim();
                TextBox11.Text = Convert.ToString(reader["per_zip"]).Trim();
                TextBox12.Text = Convert.ToString(reader["per_phone"]).Trim();
                TextBox13.Text = Convert.ToString(reader["email1"]).Trim();
                TextBox14.Text = Convert.ToString(reader["email2"]).Trim();
                TextBox15.Text = Convert.ToString(reader["emer_fname"]).Trim();
                TextBox16.Text = Convert.ToString(reader["emer_lname"]).Trim();
                TextBox17.Text = Convert.ToString(reader["emer_phone"]).Trim();

                DropDownList1.Text = Convert.ToString(reader["mail_valid_mm"]).Trim();
                DropDownList2.Text = Convert.ToString(reader["mail_valid_yyyy"]).Trim();
                DropDownList3.Text = Convert.ToString(reader["mail_country"]).Trim();
                DropDownList5.Text = Convert.ToString(reader["per_country"]).Trim();

                if (Convert.ToString(reader["per_same"]) == "Yes")
                {
                    RadioButton1.Checked = true;
                    RadioButton2.Checked = false;
                }
                else if (Convert.ToString(reader["per_same"]) == "No")
                {
                    RadioButton2.Checked = true;
                    RadioButton1.Checked = false;
                }
            }

            myConnection.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register_1.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);

        string mail_valid_mm = DropDownList1.Text.Trim();
        string mail_valid_yyyy = DropDownList2.Text.Trim();
        string mail_country = DropDownList3.Text.Trim();
        string per_country = DropDownList5.Text.Trim();

        string mail_add1 = TextBox1.Text.Trim();
        string mail_add2 = TextBox2.Text.Trim();
        string mail_city = TextBox3.Text.Trim();
        string mail_state = TextBox4.Text.Trim();
        string mail_zip = TextBox5.Text.Trim();
        string phone1 = TextBox6.Text.Trim();
        string per_add1 = TextBox7.Text.Trim();
        string per_add2 = TextBox8.Text.Trim();
        string per_city = TextBox9.Text.Trim();
        string per_state = TextBox10.Text.Trim();
        string per_zip = TextBox11.Text.Trim();
        string per_phone = TextBox12.Text.Trim();
        string email1 = TextBox13.Text.Trim();
        string email2 = TextBox14.Text.Trim();
        string emer_fname = TextBox15.Text.Trim();
        string emer_lname = TextBox16.Text.Trim();
        string emer_phone = TextBox17.Text.Trim();
        string per_same = "";

        if (RadioButton1.Checked == true)
        {
            per_same = "Yes";
            per_add1 = mail_add1;
            per_add2 = mail_add2;
            per_city = mail_city;
            per_state = mail_state;
            per_zip = mail_zip;
            per_country = mail_country;
        }

        else if (RadioButton2.Checked == true)
        {
            per_same = "No";
            per_add1 = "";
            per_add2 = "";
            per_city = "";
            per_state = "";
            per_zip = "";
            per_country = "";
        }

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        string updateCommand = "update contact_info set mail_valid_mm = @mail_valid_mm,mail_valid_yyyy = @mail_valid_yyyy, mail_country = @mail_country, mail_add1 = @mail_add1, mail_add2 = @mail_add2, mail_city = @mail_city,mail_state = @mail_state, mail_zip = @mail_zip, phone1 = @phone1, per_same = @per_same, per_country = @per_country, per_add1 = @per_add1, per_add2 = @per_add2, per_city = @per_city, per_state = @per_state, per_zip = @per_zip,per_phone=@per_phone, email1=@email1, email2=@email2, emer_fname=@emer_fname, emer_lname=@emer_lname, emer_phone=@emer_phone where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@mail_valid_mm", System.Data.SqlDbType.NChar).Value = mail_valid_mm;
        cmd.Parameters.Add("@mail_valid_yyyy", System.Data.SqlDbType.NChar).Value = mail_valid_yyyy;
        cmd.Parameters.Add("@mail_country", System.Data.SqlDbType.NChar).Value = mail_country;
        cmd.Parameters.Add("@mail_add1", System.Data.SqlDbType.NChar).Value = mail_add1;
        cmd.Parameters.Add("@mail_add2", System.Data.SqlDbType.NChar).Value = mail_add2;
        cmd.Parameters.Add("@mail_city", System.Data.SqlDbType.NChar).Value = mail_city;
        cmd.Parameters.Add("@mail_state", System.Data.SqlDbType.NChar).Value = mail_state;
        cmd.Parameters.Add("@mail_zip", System.Data.SqlDbType.NChar).Value = mail_zip;
        cmd.Parameters.Add("@phone1", System.Data.SqlDbType.NChar).Value = phone1;
        cmd.Parameters.Add("@per_same", System.Data.SqlDbType.NChar).Value = per_same;
        cmd.Parameters.Add("@per_country", System.Data.SqlDbType.NChar).Value = per_country;
        cmd.Parameters.Add("@per_add1", System.Data.SqlDbType.NChar).Value = per_add1;
        cmd.Parameters.Add("@per_add2", System.Data.SqlDbType.NChar).Value = per_add2;
        cmd.Parameters.Add("@per_city", System.Data.SqlDbType.NChar).Value = per_city;
        cmd.Parameters.Add("@per_state", System.Data.SqlDbType.NChar).Value = per_state;
        cmd.Parameters.Add("@per_zip", System.Data.SqlDbType.NChar).Value = per_zip;
        cmd.Parameters.Add("@per_phone", System.Data.SqlDbType.NChar).Value = per_phone;
        cmd.Parameters.Add("@email1", System.Data.SqlDbType.NChar).Value = email1;
        cmd.Parameters.Add("@email2", System.Data.SqlDbType.NChar).Value = email2;
        cmd.Parameters.Add("@emer_fname", System.Data.SqlDbType.NChar).Value = emer_fname;
        cmd.Parameters.Add("@emer_lname", System.Data.SqlDbType.NChar).Value = emer_lname;
        cmd.Parameters.Add("@emer_phone", System.Data.SqlDbType.NChar).Value = emer_phone;
        
        cmd.ExecuteNonQuery();
        myConnection.Close();

        Response.Redirect("register_3.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);

        string mail_valid_mm = DropDownList1.Text.Trim();
        string mail_valid_yyyy = DropDownList2.Text.Trim();
        string mail_country = DropDownList3.Text.Trim();
        string per_country = DropDownList5.Text.Trim();

        string mail_add1 = TextBox1.Text.Trim();
        string mail_add2 = TextBox2.Text.Trim();
        string mail_city = TextBox3.Text.Trim();
        string mail_state = TextBox4.Text.Trim();
        string mail_zip = TextBox5.Text.Trim();
        string phone1 = TextBox6.Text.Trim();
        string per_add1 = TextBox7.Text.Trim();
        string per_add2 = TextBox8.Text.Trim();
        string per_city = TextBox9.Text.Trim();
        string per_state = TextBox10.Text.Trim();
        string per_zip = TextBox11.Text.Trim();
        string per_phone = TextBox12.Text.Trim();
        string email1 = TextBox13.Text.Trim();
        string email2 = TextBox14.Text.Trim();
        string emer_fname = TextBox15.Text.Trim();
        string emer_lname = TextBox16.Text.Trim();
        string emer_phone = TextBox17.Text.Trim();
        string per_same = "";

        if (RadioButton1.Checked == true)
        {
            per_same = "Yes";
            per_add1 = mail_add1;
            per_add2 = mail_add2;
            per_city = mail_city;
            per_state = mail_state;
            per_zip = mail_zip;
            per_country = mail_country;
        }

        else if (RadioButton2.Checked == true)
        {
            per_same = "No";
            per_add1 = "";
            per_add2 = "";
            per_city = "";
            per_state = "";
            per_zip = "";
            per_country = "";
        }

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        string updateCommand = "update contact_info set mail_valid_mm = @mail_valid_mm,mail_valid_yyyy = @mail_valid_yyyy, mail_country = @mail_country, mail_add1 = @mail_add1, mail_add2 = @mail_add2, mail_city = @mail_city,mail_state = @mail_state, mail_zip = @mail_zip, phone1 = @phone1, per_same = @per_same, per_country = @per_country, per_add1 = @per_add1, per_add2 = @per_add2, per_city = @per_city, per_state = @per_state, per_zip = @per_zip,per_phone=@per_phone, email1=@email1, email2=@email2, emer_fname=@emer_fname, emer_lname=@emer_lname, emer_phone=@emer_phone where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@mail_valid_mm", System.Data.SqlDbType.NChar).Value = mail_valid_mm;
        cmd.Parameters.Add("@mail_valid_yyyy", System.Data.SqlDbType.NChar).Value = mail_valid_yyyy;
        cmd.Parameters.Add("@mail_country", System.Data.SqlDbType.NChar).Value = mail_country;
        cmd.Parameters.Add("@mail_add1", System.Data.SqlDbType.NChar).Value = mail_add1;
        cmd.Parameters.Add("@mail_add2", System.Data.SqlDbType.NChar).Value = mail_add2;
        cmd.Parameters.Add("@mail_city", System.Data.SqlDbType.NChar).Value = mail_city;
        cmd.Parameters.Add("@mail_state", System.Data.SqlDbType.NChar).Value = mail_state;
        cmd.Parameters.Add("@mail_zip", System.Data.SqlDbType.NChar).Value = mail_zip;
        cmd.Parameters.Add("@phone1", System.Data.SqlDbType.NChar).Value = phone1;
        cmd.Parameters.Add("@per_same", System.Data.SqlDbType.NChar).Value = per_same;
        cmd.Parameters.Add("@per_country", System.Data.SqlDbType.NChar).Value = per_country;
        cmd.Parameters.Add("@per_add1", System.Data.SqlDbType.NChar).Value = per_add1;
        cmd.Parameters.Add("@per_add2", System.Data.SqlDbType.NChar).Value = per_add2;
        cmd.Parameters.Add("@per_city", System.Data.SqlDbType.NChar).Value = per_city;
        cmd.Parameters.Add("@per_state", System.Data.SqlDbType.NChar).Value = per_state;
        cmd.Parameters.Add("@per_zip", System.Data.SqlDbType.NChar).Value = per_zip;
        cmd.Parameters.Add("@per_phone", System.Data.SqlDbType.NChar).Value = per_phone;
        cmd.Parameters.Add("@email1", System.Data.SqlDbType.NChar).Value = email1;
        cmd.Parameters.Add("@email2", System.Data.SqlDbType.NChar).Value = email2;
        cmd.Parameters.Add("@emer_fname", System.Data.SqlDbType.NChar).Value = emer_fname;
        cmd.Parameters.Add("@emer_lname", System.Data.SqlDbType.NChar).Value = emer_lname;
        cmd.Parameters.Add("@emer_phone", System.Data.SqlDbType.NChar).Value = emer_phone;

        cmd.ExecuteNonQuery();
        myConnection.Close();
    }
}