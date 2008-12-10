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

public partial class application_preview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>self.close()</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       MailMessage mail1 = new MailMessage();
       mail1.To = rec3_email.Text;
       mail1.From = "ruapplysystem@gmail.com";
       mail1.Subject = "testcase";
       mail1.Body = "hello, man";

       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2);
       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 465);
       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1);

       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", true);
       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "ruapplysystem@gmail.com");
       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "areyouapply");
       mail1.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendemailaddress", "ruapplysystem@gmail.com");

       SmtpMail.SmtpServer = "smtp.gmail.com";
       SmtpMail.Send(mail1);
       
       MailMessage mail2 = new MailMessage();
       mail2.To = rec2_email.Text;
       mail2.From = "ruapplysystem@gmail.com";
       mail2.Subject = "testcase";
       mail2.Body = "hello, man";

       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2);
       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 465);
       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1);

       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", true);
       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "ruapplysystem@gmail.com");
       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "areyouapply");
       mail2.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendemailaddress", "ruapplysystem@gmail.com");

       SmtpMail.SmtpServer = "smtp.gmail.com";
       SmtpMail.Send(mail2);
    }
}
