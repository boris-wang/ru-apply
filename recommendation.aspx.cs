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
using System.Web.Mail;
using System.Text;


public partial class recommendation : System.Web.UI.Page
{
    int ruid = 3;
    int app_id = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void previouspage_Click(object sender, EventArgs e)
    {
        //input these info in the testboxs
        string rec1fname = rec1_fname.Text;
        string rec1lname = rec1_lname.Text;
        string rec1org = rec1_org.Text;
        string rec1phone = rec1_phone.Text;
        string rec1add = rec1_add.Text;
        string rec1email = rec1_email.Text;
        string rec1online = rec1_online.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection ="Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //insert function
        string InsertCommand = "insert into recommend(ruid,app_id,rec1_fname,rec1_lname,rec1_org,rec1_phone,rec1_add,rec1_email,rec1_online) values (@ruid,@app_id,@rec1_fname,@rec1_lname,@rec1_org,@rec1_phone,@rec1_add,@rec1_email,@rec1_online)";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
            (InsertCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@rec1_fname", System.Data.SqlDbType.NChar, 20).Value = rec1fname;
        cmd.Parameters.Add("@rec1_lname", System.Data.SqlDbType.NChar, 20).Value = rec1lname;
        cmd.Parameters.Add("@rec1_org", System.Data.SqlDbType.NChar, 100).Value = rec1org;
        cmd.Parameters.Add("@rec1_phone", System.Data.SqlDbType.NChar, 20).Value = rec1phone;
        cmd.Parameters.Add("@rec1_add", System.Data.SqlDbType.NChar, 100).Value = rec1add;
        cmd.Parameters.Add("@rec1_email", System.Data.SqlDbType.NChar, 50).Value = rec1email;
        cmd.Parameters.Add("@rec1_online", System.Data.SqlDbType.NChar, 10).Value = rec1online;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
        Response.Redirect("application3.aspx");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.To = "jt_tony_5@hotmail.com";
        mail.From = "ruapplysystem@gmail.com";
        mail.Subject = "null";
        mail.Body = "your decision";

        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2);
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 465);
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1);

        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", true);
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "ruapplysystem@gmail.com");
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "areyouapply");
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendemailaddress", "ruapplysystem@gmail.com");

        SmtpMail.SmtpServer = "smtp.gmail.com";
        SmtpMail.Send(mail);

        //*******Codes above are comments newly added.*******
        //*******Codes below was comments previously.********
        //try
        //{
        //  SmtpMail.SmtpServer = "smtp.gmail.com";
        //SmtpMail.Send(mail);
        //Label2.Text = "Successful sent！";
        //}
        //catch (Exception ex)
        //{
        //Console.WriteLine(ex.ToString());
        //Label2.Text="Email cannot be sent, please contact the administrater!"; 
        //} 
    }
    protected void save_Click(object sender, EventArgs e)
    {
        //input these info in the testboxs
        string rec1fname = rec1_fname.Text;
        string rec1lname = rec1_lname.Text;
        string rec1org = rec1_org.Text;
        string rec1phone = rec1_phone.Text;
        string rec1add = rec1_add.Text;
        string rec1email = rec1_email.Text;
        string rec1online = rec1_online.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //insert function
        string InsertCommand = "insert into recommend(ruid,app_id,rec1_fname,rec1_lname,rec1_org,rec1_phone,rec1_add,rec1_email,rec1_online) values (@ruid,@app_id,@rec1_fname,@rec1_lname,@rec1_org,@rec1_phone,@rec1_add,@rec1_email,@rec1_online)";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
            (InsertCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@rec1_fname", System.Data.SqlDbType.NChar, 20).Value = rec1fname;
        cmd.Parameters.Add("@rec1_lname", System.Data.SqlDbType.NChar, 20).Value = rec1lname;
        cmd.Parameters.Add("@rec1_org", System.Data.SqlDbType.NChar, 100).Value = rec1org;
        cmd.Parameters.Add("@rec1_phone", System.Data.SqlDbType.NChar, 20).Value = rec1phone;
        cmd.Parameters.Add("@rec1_add", System.Data.SqlDbType.NChar, 100).Value = rec1add;
        cmd.Parameters.Add("@rec1_email", System.Data.SqlDbType.NChar, 50).Value = rec1email;
        cmd.Parameters.Add("@rec1_online", System.Data.SqlDbType.NChar, 10).Value = rec1online;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}
