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
using System.Linq;
using System.Xml.Linq;
using System.IO;

public partial class recommenderform : System.Web.UI.Page
{
    public static string rlextension = " ";
    int ruid;
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["LOGGEDIN"]) == 0)
        {
            Response.Redirect("default.aspx");
        }

        ruid = Convert.ToInt32(Session["ruid"]);
        name = Convert.ToString(Session["username"]);
        submit.Visible = false;

        if (!this.IsPostBack)
        {
            string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";

            SqlConnection myConnection = new SqlConnection(MysqlConnection);
            myConnection.Open();

            SqlCommand rtcmd = new SqlCommand("select * from recommender where ruid = @ruid", myConnection);//need app_id
            rtcmd.Parameters.Add("@ruid", SqlDbType.Int).Value = ruid;
            SqlDataReader reader = rtcmd.ExecuteReader();

            if (reader.Read())
            {
                app_name.Text = Convert.ToString(reader["app_name"]).Trim();
                applicantposition.Text = Convert.ToString(reader["applicantposition"]).Trim();

                if ((Convert.ToString(reader["ifrl"]).Trim() == ".pdf") | (Convert.ToString(reader["ifrl"]).Trim() == ".txt") | (Convert.ToString(reader["ifrl"]).Trim() == ".doc") | (Convert.ToString(reader["ifrl"]).Trim() == ".docx"))
                {
                    Button2.Visible = false;
                    Button3.Visible = true;
                    Button1.Enabled = false;
                    rlextension = Convert.ToString(reader["ifrl"]).Trim();
                }
            }
            myConnection.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = true;
        Button2.Visible = true;
        Label1.Text = " ";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Boolean fileOK = false;
            String path = Server.MapPath("~/UploadedFiles/");
            if (FileUpload1.HasFile)
            {
                String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions = { ".doc", ".docx", ".pdf", ".txt" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                        rlextension = fileExtension;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs("D:/yan/web/ruapply/UploadedFiles/recom/rl" + name + rlextension);
                    Label1.Text = "File uploaded!";
                    FileUpload1.Visible = false;
                    Button2.Visible = false;
                    Button3.Visible = true;
                    Button1.Enabled = false;
                    submit.Visible = true;
                }
                catch (Exception ex)
                {
                    Label1.Text = "File could not be uploaded.";
                }
            }
            else
            {
                Label1.Text = "Cannot accept files of this type.";
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //foreach (string filename in System.IO.Directory.GetFiles("F:\\下载\\try\\rec\\"))
        //{
        //    System.IO.File.Delete(filename);
        //}
        File.Delete("D:/yan/web/ruapply/UploadedFiles/recom/rl" + name + rlextension);
        rlextension = " ";
        Button1.Enabled = true;
        Label1.Text = "Please upload your recommendation letter here.";
        Button3.Visible = false;
        submit.Visible = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string app_position = applicantposition.Text;
        string ifrl0 = rlextension;
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        string updateCommand = "update recommender set ifrl=@ifrl0 where ruid = @ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@ifrl0", System.Data.SqlDbType.NChar).Value = ifrl0;
        cmd.ExecuteNonQuery();
        myConnection.Close();

        applicantposition.Enabled = false;
        Label1.Enabled = false;
        FileUpload1.Enabled = false;
        Button2.Enabled = false;
        Button3.Enabled = false;
        Button1.Enabled = false;
        submit.Enabled = false;
        Response.Write("Successful Submitted!");
        note.Visible = true;
    }
    protected void logoff_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
}
