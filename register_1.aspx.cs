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

public partial class register_1 : System.Web.UI.Page
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

            SqlCommand rtcmd = new SqlCommand("select * from bio_info where ruid = @ruid", myConnection);
            rtcmd.Parameters.Add("@ruid", SqlDbType.NChar).Value = RUID;
            SqlDataReader reader = rtcmd.ExecuteReader();

            if (reader.Read())
            {
                TextBox1.Text = Convert.ToString(reader["f_name"]).Trim();
                TextBox2.Text = Convert.ToString(reader["m_name"]).Trim();
                TextBox3.Text = Convert.ToString(reader["l_name"]).Trim();
                TextBox4.Text = Convert.ToString(reader["suffix"]).Trim();
                TextBox5.Text = Convert.ToString(reader["ul_name"]).Trim();
                TextBox6.Text = Convert.ToString(reader["um_name"]).Trim();
                TextBox7.Text = Convert.ToString(reader["uf_name"]).Trim();
                TextBox8.Text = Convert.ToString(reader["ssn"]).Trim();
                DropDownList1.Text = Convert.ToString(reader["title"]).Trim();
                DropDownList2.Text = Convert.ToString(reader["mm"]).Trim();
                DropDownList3.Text = Convert.ToString(reader["dd"]).Trim();
                DropDownList4.Text = Convert.ToString(reader["yyyy"]).Trim();
                DropDownList5.Text = Convert.ToString(reader["cob"]).Trim();
                DropDownList6.Text = Convert.ToString(reader["citizen"]).Trim();
                DropDownList7.Text = Convert.ToString(reader["ethnic"]).Trim();

                if (Convert.ToString(reader["gender"]) == "Male")
                {
                    RadioButton1.Checked = true;
                    RadioButton2.Checked = false;
                }
                else if (Convert.ToString(reader["gender"]) == "Male")
                {
                    RadioButton2.Checked = true;
                    RadioButton1.Checked = false;
                }

                if (Convert.ToString(reader["felony_id"]) == "Yes")
                {
                    RadioButton3.Checked = true;
                    RadioButton4.Checked = false;
                }
                else if (Convert.ToString(reader["gender"]) == "No")
                {
                    RadioButton4.Checked = true;
                    RadioButton3.Checked = false;
                }
            }

            myConnection.Close();
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);
        string f_name = TextBox1.Text;
        string m_name = TextBox2.Text;
        string l_name = TextBox3.Text;
        string suffix = TextBox4.Text;
        string ul_name = TextBox5.Text;
        string um_name = TextBox6.Text;
        string uf_name = TextBox7.Text;
        string ssn = TextBox8.Text;
        string felony_ex = TextBox9.Text;
        
        string title = DropDownList1.Text;
        string mm = DropDownList2.Text;
        string dd = DropDownList3.Text;
        string yyyy = DropDownList4.Text;
        string cob = DropDownList5.Text;
        string citizen = DropDownList6.Text;
        string ethnic = DropDownList7.Text;

        string gender = "";
        
        if (RadioButton1.Checked == true)
        {
            gender = RadioButton1.Text;
        }
        else if (RadioButton2.Checked == true)
        {
            gender = RadioButton2.Text;
        }

        string felony_id = "";

        if (RadioButton3.Checked == true)
        {
            felony_id = RadioButton3.Text;
        }
        else if (RadioButton4.Checked == true)
        {
            felony_id = RadioButton4.Text;
        }

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //string InsertCommand = "insert into bio_info(ruid,title,l_name,f_name, m_name, suffix, ul_name, uf_name,gender, ssn, mm, dd, yyyy, cob, citizen, ethnic) values (@ruid,@title,@l_name,@f_name, @m_name, @suffix, @ul_name, @uf_name,@gender, @ssn, @mm, @dd, @yyyy, @cob, @citizen, @ethnic)";
        //System.Data.SqlClient.SqlCommand cmd= new System.Data.SqlClient.SqlCommand(InsertCommand, myConnection);
        string updateCommand = "update bio_info set title = @title,l_name = @l_name,f_name = @f_name, m_name = @m_name, suffix = @suffix, ul_name = @ul_name, um_name = @um_name, uf_name = @uf_name,gender = @gender, ssn = @ssn, mm = @mm, dd = @dd, yyyy = @yyyy, cob = @cob, citizen = @citizen, ethnic = @ethnic, felony_id = @felony_id, felony_ex = @felony_ex where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@title", System.Data.SqlDbType.NChar).Value = title.Trim();
        cmd.Parameters.Add("@l_name", System.Data.SqlDbType.NChar).Value = l_name.Trim();
        cmd.Parameters.Add("@f_name", System.Data.SqlDbType.NChar).Value = f_name.Trim();
        cmd.Parameters.Add("@m_name", System.Data.SqlDbType.NChar).Value = m_name.Trim();
        cmd.Parameters.Add("@suffix", System.Data.SqlDbType.NChar).Value = suffix.Trim();
        cmd.Parameters.Add("@ul_name", System.Data.SqlDbType.NChar).Value = ul_name.Trim();
        cmd.Parameters.Add("@um_name", System.Data.SqlDbType.NChar).Value = um_name.Trim();
        cmd.Parameters.Add("@uf_name", System.Data.SqlDbType.NChar).Value = uf_name.Trim();
        cmd.Parameters.Add("@gender", System.Data.SqlDbType.NChar).Value = gender.Trim();
        cmd.Parameters.Add("@ssn", System.Data.SqlDbType.NChar).Value = ssn.Trim();
        cmd.Parameters.Add("@mm", System.Data.SqlDbType.NChar).Value = mm.Trim() ;
        cmd.Parameters.Add("@dd", System.Data.SqlDbType.NChar).Value = dd.Trim();
        cmd.Parameters.Add("@yyyy", System.Data.SqlDbType.NChar).Value = yyyy.Trim();
        cmd.Parameters.Add("@cob", System.Data.SqlDbType.NChar).Value = cob.Trim();
        cmd.Parameters.Add("@citizen", System.Data.SqlDbType.NChar).Value = citizen.Trim();
        cmd.Parameters.Add("@ethnic", System.Data.SqlDbType.NChar).Value = ethnic.Trim();
        cmd.Parameters.Add("@felony_id", System.Data.SqlDbType.NChar).Value = felony_id.Trim();
        cmd.Parameters.Add("@felony_ex", System.Data.SqlDbType.NChar).Value = felony_ex.Trim();

        cmd.ExecuteNonQuery();
        myConnection.Close();

        Response.Redirect("register_2.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        int RUID = Convert.ToInt32(Session["ruid"]);
        string f_name = TextBox1.Text;
        string m_name = TextBox2.Text;
        string l_name = TextBox3.Text;
        string suffix = TextBox4.Text;
        string ul_name = TextBox5.Text;
        string um_name = TextBox6.Text;
        string uf_name = TextBox7.Text;
        string ssn = TextBox8.Text;
        string felony_ex = TextBox9.Text;

        string title = DropDownList1.Text;
        string mm = DropDownList2.Text;
        string dd = DropDownList3.Text;
        string yyyy = DropDownList4.Text;
        string cob = DropDownList5.Text;
        string citizen = DropDownList6.Text;
        string ethnic = DropDownList7.Text;

        string gender = "";

        if (RadioButton1.Checked == true)
        {
            gender = RadioButton1.Text;
        }
        else if (RadioButton2.Checked == true)
        {
            gender = RadioButton2.Text;
        }

        string felony_id = "";

        if (RadioButton3.Checked == true)
        {
            felony_id = RadioButton3.Text;
        }
        else if (RadioButton4.Checked == true)
        {
            felony_id = RadioButton4.Text;
        }

        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //string InsertCommand = "insert into bio_info(ruid,title,l_name,f_name, m_name, suffix, ul_name, uf_name,gender, ssn, mm, dd, yyyy, cob, citizen, ethnic) values (@ruid,@title,@l_name,@f_name, @m_name, @suffix, @ul_name, @uf_name,@gender, @ssn, @mm, @dd, @yyyy, @cob, @citizen, @ethnic)";
        //System.Data.SqlClient.SqlCommand cmd= new System.Data.SqlClient.SqlCommand(InsertCommand, myConnection);
        string updateCommand = "update bio_info set title = @title,l_name = @l_name,f_name = @f_name, m_name = @m_name, suffix = @suffix, ul_name = @ul_name, um_name = @um_name, uf_name = @uf_name, gender = @gender, ssn = @ssn, mm = @mm, dd = @dd, yyyy = @yyyy, cob = @cob, citizen = @citizen, ethnic = @ethnic, felony_id = @felony_id, felony_ex = @felony_ex where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);

        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@title", System.Data.SqlDbType.NChar).Value = title.Trim();
        cmd.Parameters.Add("@l_name", System.Data.SqlDbType.NChar).Value = l_name.Trim();
        cmd.Parameters.Add("@f_name", System.Data.SqlDbType.NChar).Value = f_name.Trim();
        cmd.Parameters.Add("@m_name", System.Data.SqlDbType.NChar).Value = m_name.Trim();
        cmd.Parameters.Add("@suffix", System.Data.SqlDbType.NChar).Value = suffix.Trim();
        cmd.Parameters.Add("@ul_name", System.Data.SqlDbType.NChar).Value = ul_name.Trim();
        cmd.Parameters.Add("@um_name", System.Data.SqlDbType.NChar).Value = um_name.Trim();
        cmd.Parameters.Add("@uf_name", System.Data.SqlDbType.NChar).Value = uf_name.Trim();
        cmd.Parameters.Add("@gender", System.Data.SqlDbType.NChar).Value = gender.Trim();
        cmd.Parameters.Add("@ssn", System.Data.SqlDbType.NChar).Value = ssn.Trim();
        cmd.Parameters.Add("@mm", System.Data.SqlDbType.NChar).Value = mm.Trim();
        cmd.Parameters.Add("@dd", System.Data.SqlDbType.NChar).Value = dd.Trim();
        cmd.Parameters.Add("@yyyy", System.Data.SqlDbType.NChar).Value = yyyy.Trim();
        cmd.Parameters.Add("@cob", System.Data.SqlDbType.NChar).Value = cob.Trim();
        cmd.Parameters.Add("@citizen", System.Data.SqlDbType.NChar).Value = citizen.Trim();
        cmd.Parameters.Add("@ethnic", System.Data.SqlDbType.NChar).Value = ethnic.Trim();
        cmd.Parameters.Add("@felony_id", System.Data.SqlDbType.NChar).Value = felony_id.Trim();
        cmd.Parameters.Add("@felony_ex", System.Data.SqlDbType.NChar).Value = felony_ex.Trim();

        cmd.ExecuteNonQuery();
        myConnection.Close();

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        //TextBox9.Visible = true;
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        //TextBox9.Visible = false;
    }
}