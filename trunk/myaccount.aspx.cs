using System;
using System.Collections;
using System.Configuration;
using System.Data;
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
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string MysqlConnection = "Data Source = zihao-ibm\\SQLEXPRESS; Initial Catalog = RUapply;Integrated Security = True";

        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        SqlCommand rtcmd = new SqlCommand("select * from bio_info where ruid = @ruid", myConnection);
        rtcmd.Parameters.Add("@ruid", SqlDbType.NChar).Value = RUID;
        SqlDataReader reader = rtcmd.ExecuteReader();

        if (reader.Read())
        {
            TextBox1.Text = Convert.ToString(reader["f_name"]);
            TextBox2.Text = Convert.ToString(reader["m_name"]);
            TextBox3.Text = Convert.ToString(reader["l_name"]);
            TextBox4.Text = Convert.ToString(reader["suffix"]);
            TextBox5.Text = Convert.ToString(reader["ul_name"]);
            TextBox6.Text = Convert.ToString(reader["um_name"]);
            TextBox7.Text = Convert.ToString(reader["uf_name"]);
            TextBox8.Text = Convert.ToString(reader["ssn"]);
            DropDownList1.SelectedIndex = Convert.ToInt16(reader["title"]);
            //DropDownList1.Text = Convert.ToString(reader["title"]);
            //DropDownList1.Items.FindByText(Convert.ToString(reader["title"])).Selected = true;

            DropDownList2.SelectedIndex = Convert.ToInt16(reader["mm"]);
            DropDownList3.SelectedIndex = Convert.ToInt16(reader["dd"]);
            DropDownList4.SelectedIndex = Convert.ToInt16(reader["yyyy"]);
            DropDownList5.SelectedIndex = Convert.ToInt16(reader["cob"]);
            DropDownList6.SelectedIndex = Convert.ToInt16(reader["citizen"]);
            DropDownList7.SelectedIndex = Convert.ToInt16(reader["ethnic"]);
            if (Convert.ToString(reader["gender"]) == "True")
            {
                RadioButton1.Checked = true;
                RadioButton2.Checked = false;
            }
            else
            {
                RadioButton2.Checked = true;
                RadioButton1.Checked = false;
            }
            if (Convert.ToString(reader["felony_id"]) == "True")
            {
                RadioButton3.Checked = true;
                RadioButton4.Checked = false;
            }
            else
            {
                RadioButton4.Checked = true;
                RadioButton3.Checked = false;
            }
            if (RadioButton3.Checked == true)
            {
                TextBox9.Visible = true;
            }
            if (RadioButton4.Checked == true)
            {
                TextBox9.Visible = false;
            }
        }
        myConnection.Close();*/
    }
    protected void logoff_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
}
