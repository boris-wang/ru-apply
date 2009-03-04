using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Mail;
using System.Text;


public partial class usercreate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateNewUser(object sender, EventArgs e)
    {
        //input these three info in the textboxs
        string USERNAME = TextBox1.Text;
        string EMAIL = TextBox2.Text;
        string PASSWORD = TextBox3.Text;
        string QUESTION = TextBox5.Text;
        string ANSWER = TextBox6.Text;

        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        //string MysqlConnection = "Data Source=localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(MysqlConnection);
        myConnection.Open();

        string SelectCommand = "select * from login_db where (username = @USERNAME)";
        System.Data.SqlClient.SqlCommand scmd = new System.Data.SqlClient.SqlCommand(SelectCommand, myConnection);
        scmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.VarChar, 20).Value = USERNAME;
        SqlDataReader reader = scmd.ExecuteReader();

        if (reader.Read())
        {
            Label1.Text = "This username is already taken. Please enter another.";
            reader.Close();
        }
        else
        {
            reader.Close();
            //insert function
            string InsertCommand = "insert into login_db (username,password,email,question,answer,role) values (@USERNAME,@PASSWORD,@EMAIL,@QUESTION,@ANSWER,@ROLE)";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(InsertCommand, myConnection);
            cmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.VarChar, 20).Value = USERNAME;
            cmd.Parameters.Add("@PASSWORD", System.Data.SqlDbType.VarChar, 20).Value = PASSWORD;
            cmd.Parameters.Add("@EMAIL", System.Data.SqlDbType.VarChar, 50).Value = EMAIL;
            cmd.Parameters.Add("@QUESTION", System.Data.SqlDbType.VarChar, 100).Value = QUESTION;
            cmd.Parameters.Add("@ANSWER", System.Data.SqlDbType.VarChar, 100).Value = ANSWER;
            cmd.Parameters.Add("@ROLE", System.Data.SqlDbType.Int).Value = 1;
            //cmd.Parameters.Add("@REG", System.Data.SqlDbType.Bit).Value

            cmd.ExecuteNonQuery();

            Session["USERNAME"] = USERNAME;
            Session["LOGGEDIN"] = 1;

            //get ruid for session
            string getCommand = "select * from login_db where (username = @USERNAME)";
            System.Data.SqlClient.SqlCommand gcmd = new System.Data.SqlClient.SqlCommand(getCommand, myConnection);
            gcmd.Parameters.Add("@USERNAME", System.Data.SqlDbType.VarChar, 20).Value = USERNAME;
            SqlDataReader re = gcmd.ExecuteReader();
            if (re.Read())
            {
                Session["ruid"] = re["ruid"];
            }

            re.Close();

            //insert bio_info blank records
            string InsertCommand1 = "insert into bio_info(ruid,title,l_name,f_name, m_name, suffix, ul_name,um_name, uf_name,gender, ssn, mm, dd, yyyy, cob, citizen, ethnic, felony_id, felony_ex) values (@ruid,@title,@l_name,@f_name, @m_name, @suffix, @ul_name,@um_name, @uf_name,@gender, @ssn, @mm, @dd, @yyyy, @cob, @citizen, @ethnic, @felony_id, @felony_ex)";
            System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand(InsertCommand1, myConnection);
            cmd1.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = Session["ruid"];
            cmd1.Parameters.Add("@title", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@l_name", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@f_name", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@m_name", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@suffix", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@ul_name", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@um_name", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@uf_name", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@gender", System.Data.SqlDbType.NChar).Value = "False";
            cmd1.Parameters.Add("@ssn", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@mm", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@dd", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@cob", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@citizen", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@ethnic", System.Data.SqlDbType.NChar).Value = "";
            cmd1.Parameters.Add("@felony_id", System.Data.SqlDbType.NChar).Value = "False";
            cmd1.Parameters.Add("@felony_ex", System.Data.SqlDbType.NChar).Value = "";
            cmd1.ExecuteNonQuery();

            //insert contact_info
            string InsertCommand2 = "insert into contact_info(ruid, mail_valid_mm, mail_valid_yyyy, mail_country, mail_add1, mail_add2, mail_city, mail_state, mail_zip, phone1, per_same, per_country, per_add1, per_add2, per_city, per_state, per_zip, per_phone, email1, email2, emer_fname, emer_lname, emer_phone) values (@ruid, @mail_valid_mm, @mail_valid_yyyy, @mail_country, @mail_add1, @mail_add2, @mail_city, @mail_state, @mail_zip, @phone1, @per_same, @per_country, @per_add1, @per_add2, @per_city, @per_state, @per_zip, @per_phone, @email1, @email2, @emer_fname, @emer_lname, @emer_phone)";
            System.Data.SqlClient.SqlCommand cmd2 = new System.Data.SqlClient.SqlCommand(InsertCommand2, myConnection);
            cmd2.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = Session["ruid"];
            cmd2.Parameters.Add("@mail_valid_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@mail_valid_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@mail_country", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@mail_add1", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@mail_add2", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@mail_city", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@mail_state", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@mail_zip", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@phone1", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@per_same", System.Data.SqlDbType.NChar).Value = "True";
            cmd2.Parameters.Add("@per_country", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@per_add1", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@per_add2", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@per_city", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@per_state", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@per_zip", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@per_phone", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@email1", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@email2", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@emer_fname", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@emer_lname", System.Data.SqlDbType.NChar).Value = "";
            cmd2.Parameters.Add("@emer_phone", System.Data.SqlDbType.NChar).Value = "";
            cmd2.ExecuteNonQuery();

            string InsertCommand3 = "insert into edu_info (ruid, ins1_name, ins1_city,ins1_state, ins1_country, ins1_mmfrom, ins1_yyyyfrom, ins1_gpa,ins1_avescore,ins1_major, ins1_degree, ins1_deg_date_mm, ins1_deg_date_yyyy, ins2_name,ins2_city,ins2_state, ins2_country, ins2_mmfrom, ins2_yyyyfrom, ins2_gpa,ins2_avescore,ins2_major, ins2_degree, ins2_deg_date_mm, ins2_deg_date_yyyy,ins3_name,ins3_city,ins3_state, ins3_country, ins3_mmfrom, ins3_yyyyfrom, ins3_gpa,ins3_avescore,ins3_major, ins3_degree, ins3_deg_date_mm, ins3_deg_date_yyyy) values (@ruid, @ins1_name, @ins1_city, @ins1_state, @ins1_country, @ins1_mmfrom, @ins1_yyyyfrom, @ins1_gpa,@ins1_avescore,@ins1_major, @ins1_degree, @ins1_deg_date_mm, @ins1_deg_date_yyyy, @ins2_name,@ins2_city,@ins2_state, @ins2_country, @ins2_mmfrom, @ins2_yyyyfrom, @ins2_gpa,@ins2_avescore,@ins2_major, @ins2_degree, @ins2_deg_date_mm, @ins2_deg_date_yyyy,@ins3_name,@ins3_city,@ins3_state, @ins3_country, @ins3_mmfrom, @ins3_yyyyfrom, @ins3_gpa,@ins3_avescore,@ins3_major, @ins3_degree, @ins3_deg_date_mm, @ins3_deg_date_yyyy)";
            System.Data.SqlClient.SqlCommand cmd3 = new System.Data.SqlClient.SqlCommand(InsertCommand3, myConnection);

            cmd3.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = Session["ruid"];
            cmd3.Parameters.Add("@ins1_name", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_city", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_state", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_country", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_mmfrom", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_yyyyfrom", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_gpa", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_avescore", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_major", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_degree", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_deg_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins1_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = "";

            cmd3.Parameters.Add("@ins2_name", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_city", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_state", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_country", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_mmfrom", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_yyyyfrom", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_gpa", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_avescore", System.Data.SqlDbType.NChar).Value ="";
            cmd3.Parameters.Add("@ins2_major", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_degree", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_deg_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins2_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = "";

            cmd3.Parameters.Add("@ins3_name", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_city", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_state", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_country", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_mmfrom", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_yyyyfrom", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_gpa", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_avescore", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_major", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_degree", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_deg_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd3.Parameters.Add("@ins3_deg_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            
            cmd3.ExecuteNonQuery();

            //insert test_info
            string InsertCommand4 = "insert into test_info (ruid, gre_date_mm,gre_date_yyyy,gre_v, gre_q, gre_aw, sub_date_mm, sub_date_yyyy,sub_score, sub_major, gmat_date_mm, gmat_date_yyyy, gmat_total, gmat_aw, lsat_date_mm, lsat_date_yyyy,lsat_score,toefl_date_mm,toefl_date_yyyy,toefl_score,toefl_type, ielts_date_mm,ielts_date_yyyy,ielts_score,tse_date_mm,tse_date_yyyy,tse_score) values (@ruid, @gre_date_mm,@gre_date_yyyy,@gre_v, @gre_q, @gre_aw, @sub_date_mm, @sub_date_yyyy, @sub_score, @sub_major, @gmat_date_mm, @gmat_date_yyyy, @gmat_total, @gmat_aw, @lsat_date_mm, @lsat_date_yyyy,@lsat_score,@toefl_date_mm,@toefl_date_yyyy,@toefl_score,@toefl_type,@ielts_date_mm,@ielts_date_yyyy,@ielts_score,@tse_date_mm,@tse_date_yyyy,@tse_score)";
            System.Data.SqlClient.SqlCommand cmd4 = new System.Data.SqlClient.SqlCommand(InsertCommand4, myConnection);
            cmd4.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = Session["ruid"];
            cmd4.Parameters.Add("@gre_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gre_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gre_v", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gre_q", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gre_aw", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@sub_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@sub_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@sub_score", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@sub_major", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gmat_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gmat_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gmat_total", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@gmat_aw", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@lsat_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@lsat_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@lsat_score", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@toefl_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@toefl_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@toefl_score", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@toefl_type", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@ielts_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@ielts_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@ielts_score", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@tse_date_mm", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@tse_date_yyyy", System.Data.SqlDbType.NChar).Value = "";
            cmd4.Parameters.Add("@tse_score", System.Data.SqlDbType.NChar).Value = "";
            cmd4.ExecuteNonQuery();

            myConnection.Close();
            Response.Redirect("usercreateconf.aspx");
            //Response.Redirect("register_1.aspx");
        }
    }

    protected void ClearInputForm(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }

}
