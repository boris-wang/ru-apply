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
    public int r1 = 0;
    public string gender;
    int RUID = 3;

    protected void Page_Load(object sender, EventArgs e)
    {
              
        /*if (r1 > 0)
        {
            DropDownList1.Text = Session["title"].ToString();
            TextBox1.Text = Session["l_name"].ToString();
            TextBox2.Text = Session["m_name"].ToString();
            TextBox3.Text = Session["f_name"].ToString();
            TextBox4.Text = Session["suffix"].ToString();
            TextBox5.Text = Session["ul_name"].ToString();
            TextBox6.Text = Session["um_name"].ToString();
            TextBox7.Text = Session["uf_name"].ToString();
            TextBox8.Text = Session["ssn"].ToString();
            DropDownList2.Text = Session["mm"].ToString();
            DropDownList3.Text = Session["dd"].ToString();
            DropDownList4.Text = Session["yyyy"].ToString();
            DropDownList5.Text = Session["cob"].ToString();
            DropDownList6.Text = Session["citizen"].ToString();
            DropDownList7.Text = Session["ethnic"].ToString();
        }*/
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        //RadioButton2.Checked = false;
        gender = RadioButton1.Text;
        //Session["gender"] = "male";
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        //RadioButton1.Checked = false;
        gender = RadioButton2.Text;
        //Session["gender"] = "female";
    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton4.Checked = false;
        Session["felony"] = "yes";
    }

    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton3.Checked = false;
        Session["felony"] = "no";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

    }



    protected void Button2_Click1(object sender, EventArgs e)
    {
        string title = DropDownList1.Text;
        string l_name = TextBox1.Text;
        string f_name = TextBox3.Text;
        string m_name = TextBox2.Text;
        string suffix = TextBox4.Text;
        string ul_name = TextBox5.Text;
        string um_name = TextBox6.Text;
        string uf_name = TextBox7.Text;
        string ssn = TextBox8.Text;
        string mm = DropDownList2.Text;
        string dd = DropDownList3.Text;
        string yyyy = DropDownList4.Text;
        string cob = DropDownList5.Text;
        string citizen = DropDownList6.Text;
        string ethnic = DropDownList7.Text;
        if (RadioButton1.Checked = true)
            gender = RadioButton1.Text;
        else
            gender = RadioButton2.Text;
/*Session["l_name"] = TextBox1.Text;
Session["m_name"] = TextBox2.Text;
Session["f_name"] = TextBox3.Text;
Session["suffix"] = TextBox4.Text;
Session["ul_name"] = TextBox5.Text;
Session["um_name"] = TextBox6.Text;
Session["uf_name"] = TextBox7.Text;
Session["ssn"] = TextBox8.Text;
Session["mm"] = DropDownList2.Text;
Session["dd"] = DropDownList3.Text;
Session["yyyy"] = DropDownList4.Text;
Session["cob"] = DropDownList5.Text;
Session["citizen"] = DropDownList6.Text;
Session["ethnic"] = DropDownList7.Text;
*/

        string MysqlConnection = "Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = RUapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        string InsertCommand = "insert into bio_info(ruid,title,l_name,f_name, m_name, suffix, ul_name, uf_name,gender, ssn, mm, dd, yyyy, cob, citizen, ethnic) values (@ruid,@title,@l_name,@f_name, @m_name, @suffix, @ul_name, @uf_name,@gender, @ssn, @mm, @dd, @yyyy, @cob, @citizen, @ethnic)";
        System.Data.SqlClient.SqlCommand cmd= new System.Data.SqlClient.SqlCommand(InsertCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = RUID;
        cmd.Parameters.Add("@title", System.Data.SqlDbType.NChar).Value = title;
        cmd.Parameters.Add("@l_name", System.Data.SqlDbType.NChar, 20).Value = l_name;
        cmd.Parameters.Add("@f_name", System.Data.SqlDbType.NChar, 20).Value = f_name;
        cmd.Parameters.Add("@m_name", System.Data.SqlDbType.NChar, 20).Value = m_name;
        cmd.Parameters.Add("@suffix", System.Data.SqlDbType.NChar, 20).Value = suffix;
        cmd.Parameters.Add("@ul_name", System.Data.SqlDbType.NChar, 20).Value = ul_name;
        cmd.Parameters.Add("@um_name", System.Data.SqlDbType.NChar, 20).Value = um_name;
        cmd.Parameters.Add("@uf_name", System.Data.SqlDbType.NChar, 20).Value = uf_name;
        cmd.Parameters.Add("@gender", System.Data.SqlDbType.NChar, 10).Value = gender;
        cmd.Parameters.Add("@ssn", System.Data.SqlDbType.NChar, 20).Value = ssn;
        cmd.Parameters.Add("@mm", System.Data.SqlDbType.NChar, 20).Value = mm;
        cmd.Parameters.Add("@dd", System.Data.SqlDbType.NChar, 20).Value = dd;
        cmd.Parameters.Add("@yyyy", System.Data.SqlDbType.NChar, 20).Value = yyyy;
        cmd.Parameters.Add("@cob", System.Data.SqlDbType.NChar, 20).Value = cob;
        cmd.Parameters.Add("@citizen", System.Data.SqlDbType.NChar, 20).Value = citizen;
        cmd.Parameters.Add("@ethnic", System.Data.SqlDbType.NChar, 20).Value = ethnic;


        cmd.ExecuteNonQuery();

        myConnection.Close();

        //Response.Write("添加成功");
        Response.Redirect("register_2.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["title"] = DropDownList1.Text;
        Session["l_name"] = TextBox1.Text;
        Session["m_name"] = TextBox2.Text;
        Session["f_name"] = TextBox3.Text;
        Session["suffix"] = TextBox4.Text;
        Session["ul_name"] = TextBox5.Text;
        Session["um_name"] = TextBox6.Text;
        Session["uf_name"] = TextBox7.Text;
        Session["ssn"] = TextBox8.Text;
        Session["mm"] = DropDownList2.Text;
        Session["dd"] = DropDownList3.Text;
        Session["yyyy"] = DropDownList4.Text;
        Session["cob"] = DropDownList5.Text;
        Session["citizen"] = DropDownList6.Text;
        Session["ethnic"] = DropDownList7.Text;
        // r1 = r1 + 1;
    }
}
