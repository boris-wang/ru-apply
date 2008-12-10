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


public partial class recommendation : System.Web.UI.Page
{
    int ruid = 3;
    int app_id = 3;
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
        string rec2fname = rec2_fname.Text;
        string rec2lname = rec2_lname.Text;
        string rec2org = rec2_org.Text;
        string rec2phone = rec2_phone.Text;
        string rec2add = rec2_add.Text;
        string rec2email = rec2_email.Text;
        string rec2online = rec2_online.Text;
        string rec3fname = rec3_fname.Text;
        string rec3lname = rec3_lname.Text;
        string rec3org = rec3_org.Text;
        string rec3phone = rec3_phone.Text;
        string rec3add = rec3_add.Text;
        string rec3email = rec3_email.Text;
        string rec3online = rec3_online.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection ="Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //update function
        string updateCommand = "update recommend set app_id=@app_id,rec1_fname=@rec1_fname,rec1_lname=@rec1_lname,rec1_org=@rec1_org,rec1_phone=@rec1_phone,rec1_add=@rec1_add,rec1_email=@rec1_email,rec1_online=@rec1_online,rec2_fname=@rec2_fname,rec2_lname=@rec2_lname,rec2_org=@rec2_org,rec2_phone=@rec2_phone,rec2_add=@rec2_add,rec2_email=@rec2_email,rec2_online=@rec2_online,rec3_fname=@rec3_fname,rec3_lname=@rec3_lname,rec3_org=@rec3_org,rec3_phone=@rec3_phone,rec3_add=@rec3_add,rec3_email=@rec3_email,rec3_online=@rec3_online where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
            (updateCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@rec1_fname", System.Data.SqlDbType.NChar, 20).Value = rec1fname;
        cmd.Parameters.Add("@rec1_lname", System.Data.SqlDbType.NChar, 20).Value = rec1lname;
        cmd.Parameters.Add("@rec1_org", System.Data.SqlDbType.NChar, 100).Value = rec1org;
        cmd.Parameters.Add("@rec1_phone", System.Data.SqlDbType.NChar, 20).Value = rec1phone;
        cmd.Parameters.Add("@rec1_add", System.Data.SqlDbType.NChar, 100).Value = rec1add;
        cmd.Parameters.Add("@rec1_email", System.Data.SqlDbType.NChar, 50).Value = rec1email;
        cmd.Parameters.Add("@rec1_online", System.Data.SqlDbType.NChar, 10).Value = rec1online;
        cmd.Parameters.Add("@rec2_fname", System.Data.SqlDbType.NChar, 20).Value = rec2fname;
        cmd.Parameters.Add("@rec2_lname", System.Data.SqlDbType.NChar, 20).Value = rec2lname;
        cmd.Parameters.Add("@rec2_org", System.Data.SqlDbType.NChar, 100).Value = rec2org;
        cmd.Parameters.Add("@rec2_phone", System.Data.SqlDbType.NChar, 20).Value = rec2phone;
        cmd.Parameters.Add("@rec2_add", System.Data.SqlDbType.NChar, 100).Value = rec2add;
        cmd.Parameters.Add("@rec2_email", System.Data.SqlDbType.NChar, 50).Value = rec2email;
        cmd.Parameters.Add("@rec2_online", System.Data.SqlDbType.NChar, 10).Value = rec2online;
        cmd.Parameters.Add("@rec3_fname", System.Data.SqlDbType.NChar, 20).Value = rec3fname;
        cmd.Parameters.Add("@rec3_lname", System.Data.SqlDbType.NChar, 20).Value = rec3lname;
        cmd.Parameters.Add("@rec3_org", System.Data.SqlDbType.NChar, 100).Value = rec3org;
        cmd.Parameters.Add("@rec3_phone", System.Data.SqlDbType.NChar, 20).Value = rec3phone;
        cmd.Parameters.Add("@rec3_add", System.Data.SqlDbType.NChar, 100).Value = rec3add;
        cmd.Parameters.Add("@rec3_email", System.Data.SqlDbType.NChar, 50).Value = rec3email;
        cmd.Parameters.Add("@rec3_online", System.Data.SqlDbType.NChar, 10).Value = rec3online;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
        Response.Redirect("application3.aspx");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        /*MailMessage mail = new MailMessage();
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
        SmtpMail.Send(mail);*/

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
        //input these info in the testboxs
        string rec1fname = rec1_fname.Text;
        string rec1lname = rec1_lname.Text;
        string rec1org = rec1_org.Text;
        string rec1phone = rec1_phone.Text;
        string rec1add = rec1_add.Text;
        string rec1email = rec1_email.Text;
        string rec1online = rec1_online.Text;
        string rec2fname = rec2_fname.Text;
        string rec2lname = rec2_lname.Text;
        string rec2org = rec2_org.Text;
        string rec2phone = rec2_phone.Text;
        string rec2add = rec2_add.Text;
        string rec2email = rec2_email.Text;
        string rec2online = rec2_online.Text;
        string rec3fname = rec3_fname.Text;
        string rec3lname = rec3_lname.Text;
        string rec3org = rec3_org.Text;
        string rec3phone = rec3_phone.Text;
        string rec3add = rec3_add.Text;
        string rec3email = rec3_email.Text;
        string rec3online = rec3_online.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //update function
        string updateCommand = "update recommend set app_id=@app_id,rec1_fname=@rec1_fname,rec1_lname=@rec1_lname,rec1_org=@rec1_org,rec1_phone=@rec1_phone,rec1_add=@rec1_add,rec1_email=@rec1_email,rec1_online=@rec1_online,rec2_fname=@rec2_fname,rec2_lname=@rec2_lname,rec2_org=@rec2_org,rec2_phone=@rec2_phone,rec2_add=@rec2_add,rec2_email=@rec2_email,rec2_online=@rec2_online,rec3_fname=@rec3_fname,rec3_lname=@rec3_lname,rec3_org=@rec3_org,rec3_phone=@rec3_phone,rec3_add=@rec3_add,rec3_email=@rec3_email,rec3_online=@rec3_online where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
            (updateCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@rec1_fname", System.Data.SqlDbType.NChar, 20).Value = rec1fname;
        cmd.Parameters.Add("@rec1_lname", System.Data.SqlDbType.NChar, 20).Value = rec1lname;
        cmd.Parameters.Add("@rec1_org", System.Data.SqlDbType.NChar, 100).Value = rec1org;
        cmd.Parameters.Add("@rec1_phone", System.Data.SqlDbType.NChar, 20).Value = rec1phone;
        cmd.Parameters.Add("@rec1_add", System.Data.SqlDbType.NChar, 100).Value = rec1add;
        cmd.Parameters.Add("@rec1_email", System.Data.SqlDbType.NChar, 50).Value = rec1email;
        cmd.Parameters.Add("@rec1_online", System.Data.SqlDbType.NChar, 10).Value = rec1online;
        cmd.Parameters.Add("@rec2_fname", System.Data.SqlDbType.NChar, 20).Value = rec2fname;
        cmd.Parameters.Add("@rec2_lname", System.Data.SqlDbType.NChar, 20).Value = rec2lname;
        cmd.Parameters.Add("@rec2_org", System.Data.SqlDbType.NChar, 100).Value = rec2org;
        cmd.Parameters.Add("@rec2_phone", System.Data.SqlDbType.NChar, 20).Value = rec2phone;
        cmd.Parameters.Add("@rec2_add", System.Data.SqlDbType.NChar, 100).Value = rec2add;
        cmd.Parameters.Add("@rec2_email", System.Data.SqlDbType.NChar, 50).Value = rec2email;
        cmd.Parameters.Add("@rec2_online", System.Data.SqlDbType.NChar, 10).Value = rec2online;
        cmd.Parameters.Add("@rec3_fname", System.Data.SqlDbType.NChar, 20).Value = rec3fname;
        cmd.Parameters.Add("@rec3_lname", System.Data.SqlDbType.NChar, 20).Value = rec3lname;
        cmd.Parameters.Add("@rec3_org", System.Data.SqlDbType.NChar, 100).Value = rec3org;
        cmd.Parameters.Add("@rec3_phone", System.Data.SqlDbType.NChar, 20).Value = rec3phone;
        cmd.Parameters.Add("@rec3_add", System.Data.SqlDbType.NChar, 100).Value = rec3add;
        cmd.Parameters.Add("@rec3_email", System.Data.SqlDbType.NChar, 50).Value = rec3email;
        cmd.Parameters.Add("@rec3_online", System.Data.SqlDbType.NChar, 10).Value = rec3online;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
        Response.Write("<script>window.open('application_preview.aspx')</script>");
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
        string rec2fname = rec2_fname.Text;
        string rec2lname = rec2_lname.Text;
        string rec2org = rec2_org.Text;
        string rec2phone = rec2_phone.Text;
        string rec2add = rec2_add.Text;
        string rec2email = rec2_email.Text;
        string rec2online = rec2_online.Text;
        string rec3fname = rec3_fname.Text;
        string rec3lname = rec3_lname.Text;
        string rec3org = rec3_org.Text;
        string rec3phone = rec3_phone.Text;
        string rec3add = rec3_add.Text;
        string rec3email = rec3_email.Text;
        string rec3online = rec3_online.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();
        //update function
        string updateCommand = "update recommend set app_id=@app_id,rec1_fname=@rec1_fname,rec1_lname=@rec1_lname,rec1_org=@rec1_org,rec1_phone=@rec1_phone,rec1_add=@rec1_add,rec1_email=@rec1_email,rec1_online=@rec1_online,rec2_fname=@rec2_fname,rec2_lname=@rec2_lname,rec2_org=@rec2_org,rec2_phone=@rec2_phone,rec2_add=@rec2_add,rec2_email=@rec2_email,rec2_online=@rec2_online,rec3_fname=@rec3_fname,rec3_lname=@rec3_lname,rec3_org=@rec3_org,rec3_phone=@rec3_phone,rec3_add=@rec3_add,rec3_email=@rec3_email,rec3_online=@rec3_online where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
            (updateCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@rec1_fname", System.Data.SqlDbType.NChar, 20).Value = rec1fname;
        cmd.Parameters.Add("@rec1_lname", System.Data.SqlDbType.NChar, 20).Value = rec1lname;
        cmd.Parameters.Add("@rec1_org", System.Data.SqlDbType.NChar, 100).Value = rec1org;
        cmd.Parameters.Add("@rec1_phone", System.Data.SqlDbType.NChar, 20).Value = rec1phone;
        cmd.Parameters.Add("@rec1_add", System.Data.SqlDbType.NChar, 100).Value = rec1add;
        cmd.Parameters.Add("@rec1_email", System.Data.SqlDbType.NChar, 50).Value = rec1email;
        cmd.Parameters.Add("@rec1_online", System.Data.SqlDbType.NChar, 10).Value = rec1online;
        cmd.Parameters.Add("@rec2_fname", System.Data.SqlDbType.NChar, 20).Value = rec2fname;
        cmd.Parameters.Add("@rec2_lname", System.Data.SqlDbType.NChar, 20).Value = rec2lname;
        cmd.Parameters.Add("@rec2_org", System.Data.SqlDbType.NChar, 100).Value = rec2org;
        cmd.Parameters.Add("@rec2_phone", System.Data.SqlDbType.NChar, 20).Value = rec2phone;
        cmd.Parameters.Add("@rec2_add", System.Data.SqlDbType.NChar, 100).Value = rec2add;
        cmd.Parameters.Add("@rec2_email", System.Data.SqlDbType.NChar, 50).Value = rec2email;
        cmd.Parameters.Add("@rec2_online", System.Data.SqlDbType.NChar, 10).Value = rec2online;
        cmd.Parameters.Add("@rec3_fname", System.Data.SqlDbType.NChar, 20).Value = rec3fname;
        cmd.Parameters.Add("@rec3_lname", System.Data.SqlDbType.NChar, 20).Value = rec3lname;
        cmd.Parameters.Add("@rec3_org", System.Data.SqlDbType.NChar, 100).Value = rec3org;
        cmd.Parameters.Add("@rec3_phone", System.Data.SqlDbType.NChar, 20).Value = rec3phone;
        cmd.Parameters.Add("@rec3_add", System.Data.SqlDbType.NChar, 100).Value = rec3add;
        cmd.Parameters.Add("@rec3_email", System.Data.SqlDbType.NChar, 50).Value = rec3email;
        cmd.Parameters.Add("@rec3_online", System.Data.SqlDbType.NChar, 10).Value = rec3online;
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
