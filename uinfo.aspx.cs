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

public partial class uinfoclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["LOGGEDIN"]) == 0)
        {
            Response.Redirect("default.aspx");
        }
    }

    protected void dept_Click(object sender, EventArgs e)
    {
        deptlist.Visible = true;
        deptsubmit.Visible = true;
        pdflabel.Visible = true;
        PDFbtn.Visible = true;
    }

    protected void prereq_Click(object sender, EventArgs e)
    {
        prereqlist.Visible = true;
        prereqsubmit.Visible = true;
    }

    protected void acainfo_Click(object sender, EventArgs e)
    {
        acaschool.Visible = true;
        acadept.Visible = true;
        acasubmit.Visible = true;
    }
    protected void overall_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('overall.aspx','','menubar=no, scrollbars=yes')</script>");
    }
    protected void acasubmit_Click(object sender, EventArgs e)
    {
        if (acaschool.SelectedValue == "1")
        {
            if (acadept.SelectedValue == "1")
                Response.Write("<script>window.open('http://www.ece.rutgers.edu/')</script>");
            if (acadept.SelectedValue == "2")
                Response.Write("<script>window.open('http://www.cs.rutgers.edu/')</script>");
        }
        if (acaschool.SelectedValue == "2")
        {
            if (acadept.SelectedValue == "1")
                Response.Write("<script>window.open('http://www.ee.princeton.edu/')</script>");
            if (acadept.SelectedValue == "2")
                Response.Write("<script>window.open('http://www.cs.princeton.edu/')</script>");
        }
    }
    protected void prereqsubmit_Click(object sender, EventArgs e)
    {
        if (prereqlist.SelectedValue == "1")
            Response.Write("<script>window.open('http://gradstudy.rutgers.edu/')</script>");
        if (prereqlist.SelectedValue == "2")
            Response.Write("<script>window.open('http://gradschool.princeton.edu/admission/')</script>");
    }
    protected void deptsubmit_Click(object sender, EventArgs e)
    {
        if (deptlist.SelectedValue == "1")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/mba')</script>");
        if (deptlist.SelectedValue == "2")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/law')</script>");
        if (deptlist.SelectedValue == "3")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/med')</script>");
        if (deptlist.SelectedValue == "4")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/eng')</script>");
        if (deptlist.SelectedValue == "5")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/edu')</script>");
        if (deptlist.SelectedValue == "6")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/sciences.html')</script>");
        if (deptlist.SelectedValue == "7")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/library.html')</script>");
        if (deptlist.SelectedValue == "8")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/socsci.html')</script>");
        if (deptlist.SelectedValue == "9")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/health.html')</script>");
        if (deptlist.SelectedValue == "10")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/public-affairs.html')</script>");
        if (deptlist.SelectedValue == "11")
            Response.Write("<script>window.open('http://grad-schools.usnews.rankingsandreviews.com/grad/finearts.html')</script>");

    }
    protected void PDFbtn_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('http://211.95.79.70/USNEWS_RANK_2007.pdf')</script>");
    }
}
