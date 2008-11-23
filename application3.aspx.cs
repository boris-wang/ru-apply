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

public partial class application3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void uploadPS_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = true;
        Button1.Visible = true; 
    }
    protected void previouspage_Click(object sender, EventArgs e)
    {
        Response.Redirect("application2.aspx");
    }
    protected void save_Click(object sender, EventArgs e)
    {

    }
    protected void nextpage_Click(object sender, EventArgs e)
    {
        Response.Redirect("recommendation.aspx");
    }
    protected void uploadResume_Click(object sender, EventArgs e)
    {
        FileUpload2.Visible = true;
        Button2.Visible = true; 
    }
    protected void Button1_Click(object sender, EventArgs e)
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
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs("F:\\下载\\try\\ps\\"
                    + FileUpload1.FileName);
                    Label1.Text = "File uploaded!";
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
        FileUpload1.Visible = false;
        Button1.Visible = false;
        Button3.Visible = true;
        uploadPS.Enabled = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Boolean fileOK = false;
            String path = Server.MapPath("~/UploadedFiles/");
            if (FileUpload2.HasFile)
            {
                String fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName).ToLower();
                String[] allowedExtensions = { ".doc", ".docx", ".pdf", ".txt" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileUpload2.PostedFile.SaveAs("F:\\下载\\try\\resume\\"
                    + FileUpload2.FileName);
                    Label2.Text = "File uploaded!";
                }
                catch (Exception ex)
                {
                    Label2.Text = "File could not be uploaded.";
                }
            }
            else
            {
                Label2.Text = "Cannot accept files of this type.";
            }
        }
        FileUpload2.Visible = false;
        Button2.Visible = false;
        Button4.Visible = true;
        uploadResume.Enabled = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        foreach (string filename in System.IO.Directory.GetFiles("F:\\下载\\try\\ps\\"))
        {
            System.IO.File.Delete(filename);
        }
        uploadPS.Enabled = true;
        Label1.Text = "There is no PS uploaded.";
        Button3.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        foreach (string filename in System.IO.Directory.GetFiles("F:\\下载\\try\\resume\\"))
        {
            System.IO.File.Delete(filename);
        }
        uploadResume.Enabled=true; 
        Label2.Text = "There is no Resume uploaded.";
        Button4.Visible = false;
    }
}
