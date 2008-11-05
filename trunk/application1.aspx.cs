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

public partial class application1 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void nextpage_Click(object sender, EventArgs e)
    {
        //input these info in the testboxs
        string college_name = collegename.Text;
        string college_campus = campus.Text;
        string college_school = gradschool.Text;
        string college_program = program.Text;
        string objective = enrollobj.Text;
        string entry_term = entryterm.Text;
        string status = fullorhalf.Text;
        string area0 = area.Text;
        string faculty0 = faculty.Text;
        string othercollege = otherschool.Text;
        string MysqlConnection ="Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();


        string InsertCommand = "insert into program_info(collegename,campus,gradschool,program,enrollobj,entryterm,fullorhalf,area,faculty,otherschool) values (@collegename,@campus,@gradschool,@program,@enrollobj,@entryterm,@fullorhalf,@area,@faculty,@otherschool)";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(InsertCommand, myConnection); 
        cmd.Parameters.Add("@collegename", System.Data.SqlDbType.NChar, 100).Value = collegename;
        cmd.Parameters.Add("@campus", System.Data.SqlDbType.NChar, 100).Value = campus;
        cmd.Parameters.Add("@gradschool", System.Data.SqlDbType.NChar, 100).Value = gradschool;
        cmd.Parameters.Add("@program", System.Data.SqlDbType.NChar, 100).Value = program;
        cmd.Parameters.Add("@enrollobj", System.Data.SqlDbType.NChar, 10).Value = enrollobj;
        cmd.Parameters.Add("@entryterm", System.Data.SqlDbType.NChar, 20).Value = entryterm;
        cmd.Parameters.Add("@fullorhalf", System.Data.SqlDbType.NChar, 50).Value = fullorhalf;
        cmd.Parameters.Add("@area", System.Data.SqlDbType.NChar, 50).Value = area0;
        cmd.Parameters.Add("@faculty", System.Data.SqlDbType.Text).Value = faculty0;
        cmd.Parameters.Add("@otherschool", System.Data.SqlDbType.Text).Value = othercollege;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
        Response.Redirect("application2.aspx"); 
    }
    protected void save_Click(object sender, EventArgs e)
    {
        //input these info in the testboxs
        string college_name = collegename.Text;
        string college_campus = campus.Text;
        string college_school = gradschool.Text;
        string college_program = program.Text;
        string objective = enrollobj.Text;
        string entry_term = entryterm.Text;
        string status = fullorhalf.Text;
        string area0 = area.Text;
        string faculty0 = faculty.Text;
        string othercollege = otherschool.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        //insert function
        string InsertCommand = "insert into program_info(collegename,campus,gradschool,program,enrollobj,entryterm,fullorhalf,area,faculty,otherschool) values (@collegename,@campus,@gradschool,@program,@enrollobj,@entryterm,@fullorhalf,@area,@faculty,@otherschool)";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
        (InsertCommand, myConnection);
        cmd.Parameters.Add("@collegename", System.Data.SqlDbType.NChar, 100).Value = collegename;
        cmd.Parameters.Add("@campus", System.Data.SqlDbType.NChar, 100).Value = campus;
        cmd.Parameters.Add("@gradschool", System.Data.SqlDbType.NChar, 100).Value = gradschool;
        cmd.Parameters.Add("@program", System.Data.SqlDbType.NChar, 100).Value = program;
        cmd.Parameters.Add("@enrollobj", System.Data.SqlDbType.NChar, 10).Value = enrollobj;
        cmd.Parameters.Add("@entryterm", System.Data.SqlDbType.NChar, 20).Value = entryterm;
        cmd.Parameters.Add("@fullorhalf", System.Data.SqlDbType.NChar, 50).Value = fullorhalf;
        cmd.Parameters.Add("@area", System.Data.SqlDbType.NChar, 50).Value = area0;
        cmd.Parameters.Add("@faculty", System.Data.SqlDbType.Text).Value = faculty0;
        cmd.Parameters.Add("@otherschool", System.Data.SqlDbType.Text).Value = othercollege;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
    }
    protected void campus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
