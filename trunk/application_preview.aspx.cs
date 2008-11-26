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
    }
}
