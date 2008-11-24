using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recommenderform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs("F:\\下载\\try\\rec\\"
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
        Button2.Visible = false;
        Button3.Visible = true;
        Button1.Enabled = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        foreach (string filename in System.IO.Directory.GetFiles("F:\\下载\\try\\rec\\"))
        {
            System.IO.File.Delete(filename);
        }
        Button1.Enabled = true;
        Label1.Text = "Please upload your recommendation letter here.";
        Button3.Visible = false;
    }
}
