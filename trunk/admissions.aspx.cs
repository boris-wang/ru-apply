using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.Mail;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admissions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Literal1.Visible == false)
            step2.Text = "See Instructions";
        if (Literal1.Visible == true)
            step2.Text = "Hide Instructions";*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        SqlCommand countcmd = new SqlCommand("select count(*) from admin_info where decision = @decision", myConnection);
        countcmd.Parameters.Add("@decision", SqlDbType.Bit).Value = true;
        int c = Convert.ToInt32(countcmd.ExecuteScalar());
        SqlCommand rtcmd = new SqlCommand("select * from admin_info where decision = @decision", myConnection);
        rtcmd.Parameters.Add("@decision", SqlDbType.Bit).Value = true;
        SqlDataReader reader = rtcmd.ExecuteReader();
        string[,] info = new string[c, 12];
        int i;
        for (i = 0; i < c; i++)
        {

            if (reader.Read())
            {
                info[i, 0] = reader.GetString(0);   //ruid
                info[i, 1] = reader.GetString(1);   //name
                info[i, 2] = reader.GetString(2);   //department
                info[i, 3] = reader.GetString(6);   //email
                info[i, 4] = Convert.ToString(reader.GetBoolean(7));   //decision
                info[i, 5] = Convert.ToString(reader.GetBoolean(8));   //send_email
                info[i, 6] = Convert.ToString(reader.GetBoolean(9));   //ad
                info[i, 7] = reader.GetString(10);   //ad_type
                info[i, 8] = Convert.ToString(reader.GetBoolean(11));   //rej
                info[i, 9] = Convert.ToString(reader.GetBoolean(12));   //reason1
                info[i, 10] = Convert.ToString(reader.GetBoolean(13));  //reason2
                info[i, 11] = Convert.ToString(reader.GetBoolean(14));  //reason3
            }


                if (info[i, 4] == "True")
                {
                    //send email
                    MailMessage mail = new MailMessage();
                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2);
                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 465);
                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1);

                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", true);
                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "ruapplysystem@gmail.com");
                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "areyouapply");
                    mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendemailaddress", "ruapplysystem@gmail.com");

                    mail.To = info[i, 3];
                    mail.From = "lendlice29@gmail.com";

                    string ad_info = "0";
                    string reason1 = "";
                    string reason2 = "";
                    string reason3 = "";
                    if (info[i, 9] == "True")
                        reason1 = "1.Your academic background is not competitive.";
                    if (info[i, 10] == "True")
                        reason2 = "2.Your language standard test score is not competitive.";
                    if (info[i, 11] == "True")
                        reason3 = "3.No major professor available in proposed specialization major.";

                    if (info[i, 6] == "True")
                    {
                        if (info[i, 7] == "1")
                            ad_info = "with fellowship";
                        else if (info[i, 7] == "2")
                            ad_info = "with Teaching Assistantship.";
                        else if (info[i, 7] == "3")
                            ad_info = "with Research Assistantship.";
                        else if (info[i, 7] == "0")
                            ad_info = "";

                        mail.Subject = "Admission from Rutgers University";
                        mail.Body = "Dear " + info[i, 1] + ":\n" + "\n" + "Congratrlation! You have been admitted into " + info[i, 2] + "department " + ad_info + "\n" + "\n" + "Best wishes," + "\n" + "RUapply";
                    }

                    else if (info[i, 8] == "True")
                    {
                        mail.Subject = "Rejection from Rutgers University";
                        mail.Body = "Dear " + info[i, 1] + ":" + "\n" + "\n" + "I'm sorry to inform you that after serious consideration, we are unable to give you admission because of " + reason1 + reason2 + reason3 + "\n" + "\n" + "Best wishes," + "\n" + "RUapply";

                    }

                    info[i, 5] = "true";
                    //SmtpMail.SmtpServer = "smtp.gmail.com";
                    SmtpMail.Send(mail);
                }
            
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        GridView1.Visible = false;
    }

    protected void step2_Click(object sender, EventArgs e)
    {
        Literal1.Visible = true;
        step2.Visible = false;
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView3.Visible = true;
    }
}
