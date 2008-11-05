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

public partial class application2 : System.Web.UI.Page
{
    int ruid = 3;
    int app_id = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void nextpage_Click(object sender, EventArgs e)
    {
        //input these info in the testboxs
        string emp1_name = emp1name.Text;
        string type_1 = type1.Text;
        string title_1 = title1.Text;
        string city_1 = city1.Text;
        string state_1 = state1.Text;
        string country_1 = country1.Text;
        string emp1_mm_from = mmfrom1.Text;
        string emp1_yyyy_from = yyfrom1.Text;
        string emp1_mm_to = mmto1.Text;
        string emp1_yyyy_to = yyto1.Text;
        string describe_1 = describe1.Text;
//open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
string MysqlConnection ="Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

//insert function
        string InsertCommand = "insert into emp_info(ruid,app_id,emp1_name,type1,title1,city1,state1,country1,emp1_mmfrom,emp1_yyyyfrom,emp1_mmto,emp1_yyyyto,describe1) values (@ruid,@app_id,@emp1name,@type1,@title1,@city1,@state1,@country1,@mmfrom1,@yyfrom1,@mmto1,@yyto1,@describe1)";
System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
(InsertCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@emp1name", System.Data.SqlDbType.NChar, 100).Value = emp1_name;
        cmd.Parameters.Add("@type1", System.Data.SqlDbType.NChar, 100).Value = type_1;
        cmd.Parameters.Add("@title1", System.Data.SqlDbType.NChar, 100).Value = title_1;
        cmd.Parameters.Add("@city1", System.Data.SqlDbType.NChar, 50).Value = city_1;
        cmd.Parameters.Add("@state1", System.Data.SqlDbType.NChar, 50).Value = state_1;
        cmd.Parameters.Add("@country1", System.Data.SqlDbType.NChar, 50).Value = country_1;
        cmd.Parameters.Add("@mmfrom1", System.Data.SqlDbType.NChar, 10).Value = emp1_mm_from;
        cmd.Parameters.Add("@yyfrom1", System.Data.SqlDbType.NChar, 10).Value = emp1_yyyy_from;
        cmd.Parameters.Add("@mmto1", System.Data.SqlDbType.NChar, 10).Value = emp1_mm_to;
        cmd.Parameters.Add("@yyto1", System.Data.SqlDbType.NChar, 10).Value = emp1_yyyy_to;
        cmd.Parameters.Add("@describe1", System.Data.SqlDbType.Text).Value = describe_1;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
        Response.Redirect("application3.aspx");
    }
    protected void save_Click(object sender, EventArgs e)
    {
        //input these info in the testboxs
        string emp1_name = emp1name.Text;
        string type_1 = type1.Text;
        string title_1 = title1.Text;
        string city_1 = city1.Text;
        string state_1 = state1.Text;
        string country_1 = country1.Text;
        string emp1_mm_from = mmfrom1.Text;
        string emp1_yyyy_from = yyfrom1.Text;
        string emp1_mm_to = mmto1.Text;
        string emp1_yyyy_to = yyto1.Text;
        string describe_1 = describe1.Text;
//open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
string MysqlConnection ="Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

//insert function
        string InsertCommand = "insert into emp_info(ruid,app_id,emp1_name,type1,title1,city1,state1,country1,emp1_mmfrom,emp1_yyyyfrom,emp1_mmto,emp1_yyyyto,describe1) values (@ruid,@app_id,@emp1name,@type1,@title1,@city1,@state1,@country1,@mmfrom1,@yyfrom1,@mmto1,@yyto1,@describe1)";
System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
(InsertCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@emp1name", System.Data.SqlDbType.NChar, 100).Value = emp1_name;
        cmd.Parameters.Add("@type1", System.Data.SqlDbType.NChar, 100).Value = type_1;
        cmd.Parameters.Add("@title1", System.Data.SqlDbType.NChar, 100).Value = title_1;
        cmd.Parameters.Add("@city1", System.Data.SqlDbType.NChar, 50).Value = city_1;
        cmd.Parameters.Add("@state1", System.Data.SqlDbType.NChar, 50).Value = state_1;
        cmd.Parameters.Add("@country1", System.Data.SqlDbType.NChar, 50).Value = country_1;
        cmd.Parameters.Add("@mmfrom1", System.Data.SqlDbType.NChar, 10).Value = emp1_mm_from;
        cmd.Parameters.Add("@yyfrom1", System.Data.SqlDbType.NChar, 10).Value = emp1_yyyy_from;
        cmd.Parameters.Add("@mmto1", System.Data.SqlDbType.NChar, 10).Value = emp1_mm_to;
        cmd.Parameters.Add("@yyto1", System.Data.SqlDbType.NChar, 10).Value = emp1_yyyy_to;
        cmd.Parameters.Add("@describe1", System.Data.SqlDbType.Text).Value = describe_1;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
    }
    protected void previouspage_Click(object sender, EventArgs e)
    {
        //input these info in the testboxs
        string emp1_name = emp1name.Text;
        string type_1 = type1.Text;
        string title_1 = title1.Text;
        string city_1 = city1.Text;
        string state_1 = state1.Text;
        string country_1 = country1.Text;
        string emp1_mm_from = mmfrom1.Text;
        string emp1_yyyy_from = yyfrom1.Text;
        string emp1_mm_to = mmto1.Text;
        string emp1_yyyy_to = yyto1.Text;
        string describe_1 = describe1.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        //insert function
        string InsertCommand = "insert into emp_info(ruid,app_id,emp1_name,type1,title1,city1,state1,country1,emp1_mmfrom,emp1_yyyyfrom,emp1_mmto,emp1_yyyyto,describe1) values (@ruid,@app_id,@emp1name,@type1,@title1,@city1,@state1,@country1,@mmfrom1,@yyfrom1,@mmto1,@yyto1,@describe1)";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
        (InsertCommand, myConnection); 
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@emp1name", System.Data.SqlDbType.NChar, 100).Value = emp1_name;
        cmd.Parameters.Add("@type1", System.Data.SqlDbType.NChar, 100).Value = type_1;
        cmd.Parameters.Add("@title1", System.Data.SqlDbType.NChar, 100).Value = title_1;
        cmd.Parameters.Add("@city1", System.Data.SqlDbType.NChar, 50).Value = city_1;
        cmd.Parameters.Add("@state1", System.Data.SqlDbType.NChar, 50).Value = state_1;
        cmd.Parameters.Add("@country1", System.Data.SqlDbType.NChar, 50).Value = country_1;
        cmd.Parameters.Add("@mmfrom1", System.Data.SqlDbType.NChar, 10).Value = emp1_mm_from;
        cmd.Parameters.Add("@yyfrom1", System.Data.SqlDbType.NChar, 10).Value = emp1_yyyy_from;
        cmd.Parameters.Add("@mmto1", System.Data.SqlDbType.NChar, 10).Value = emp1_mm_to;
        cmd.Parameters.Add("@yyto1", System.Data.SqlDbType.NChar, 10).Value = emp1_yyyy_to;
        cmd.Parameters.Add("@describe1", System.Data.SqlDbType.Text).Value = describe_1;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
        Response.Redirect("application1.aspx");
    }
    protected void type1_TextChanged(object sender, EventArgs e)
    {

    }
}
