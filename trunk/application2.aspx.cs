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
    int app_id = 3;
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
        string emp2_name = emp2name.Text;
        string type_2 = type2.Text;
        string title_2 = title2.Text;
        string city_2 = city2.Text;
        string state_2 = state2.Text;
        string country_2 = country2.Text;
        string emp2_mm_from = mmfrom2.Text;
        string emp2_yyyy_from = yyfrom2.Text;
        string emp2_mm_to = mmto2.Text;
        string emp2_yyyy_to = yyto2.Text;
        string describe_2 = describe2.Text;
        string emp3_name = emp3name.Text;
        string type_3 = type3.Text;
        string title_3 = title3.Text;
        string city_3 = city3.Text;
        string state_3 = state3.Text;
        string country_3 = country3.Text;
        string emp3_mm_from = mmfrom3.Text;
        string emp3_yyyy_from = yyfrom3.Text;
        string emp3_mm_to = mmto3.Text;
        string emp3_yyyy_to = yyto3.Text;
        string describe_3 = describe3.Text;
//open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
string MysqlConnection ="Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

//update function
        string updateCommand = "update emp_info set app_id=@app_id,emp1_name=@emp1name,type1=@type1,title1=@title1,city1=@city1,state1=@state1,country1=@country1,emp1_mmfrom=@mmfrom1,emp1_yyyyfrom=@yyfrom1,emp1_mmto=@mmto1,emp1_yyyyto=@yyto1,describe1=@describe1,emp2_name=@emp2name,type2=@type2,title2=@title2,city2=@city2,state2=@state2,country2=@country2,emp2_mmfrom=@mmfrom2,emp2_yyyyfrom=@yyfrom2,emp2_mmto=@mmto2,emp2_yyyyto=@yyto2,describe2=@describe2,emp3_name=@emp3name,type3=@type3,title3=@title3,city3=@city3,state3=@state3,country3=@country3,emp3_mmfrom=@mmfrom3,emp3_yyyyfrom=@yyfrom3,emp3_mmto=@mmto3,emp3_yyyyto=@yyto3,describe3=@describe3 where ruid=@ruid";
System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
(updateCommand, myConnection);
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
        cmd.Parameters.Add("@emp2name", System.Data.SqlDbType.NChar, 100).Value = emp2_name;
        cmd.Parameters.Add("@type2", System.Data.SqlDbType.NChar, 100).Value = type_2;
        cmd.Parameters.Add("@title2", System.Data.SqlDbType.NChar, 100).Value = title_2;
        cmd.Parameters.Add("@city2", System.Data.SqlDbType.NChar, 50).Value = city_2;
        cmd.Parameters.Add("@state2", System.Data.SqlDbType.NChar, 50).Value = state_2;
        cmd.Parameters.Add("@country2", System.Data.SqlDbType.NChar, 50).Value = country_2;
        cmd.Parameters.Add("@mmfrom2", System.Data.SqlDbType.NChar, 10).Value = emp2_mm_from;
        cmd.Parameters.Add("@yyfrom2", System.Data.SqlDbType.NChar, 10).Value = emp2_yyyy_from;
        cmd.Parameters.Add("@mmto2", System.Data.SqlDbType.NChar, 10).Value = emp2_mm_to;
        cmd.Parameters.Add("@yyto2", System.Data.SqlDbType.NChar, 10).Value = emp2_yyyy_to;
        cmd.Parameters.Add("@describe2", System.Data.SqlDbType.Text).Value = describe_2;
        cmd.Parameters.Add("@emp3name", System.Data.SqlDbType.NChar, 100).Value = emp3_name;
        cmd.Parameters.Add("@type3", System.Data.SqlDbType.NChar, 100).Value = type_3;
        cmd.Parameters.Add("@title3", System.Data.SqlDbType.NChar, 100).Value = title_3;
        cmd.Parameters.Add("@city3", System.Data.SqlDbType.NChar, 50).Value = city_3;
        cmd.Parameters.Add("@state3", System.Data.SqlDbType.NChar, 50).Value = state_3;
        cmd.Parameters.Add("@country3", System.Data.SqlDbType.NChar, 50).Value = country_3;
        cmd.Parameters.Add("@mmfrom3", System.Data.SqlDbType.NChar, 10).Value = emp3_mm_from;
        cmd.Parameters.Add("@yyfrom3", System.Data.SqlDbType.NChar, 10).Value = emp3_yyyy_from;
        cmd.Parameters.Add("@mmto3", System.Data.SqlDbType.NChar, 10).Value = emp3_mm_to;
        cmd.Parameters.Add("@yyto3", System.Data.SqlDbType.NChar, 10).Value = emp3_yyyy_to;
        cmd.Parameters.Add("@describe3", System.Data.SqlDbType.Text).Value = describe_3;
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
        string emp2_name = emp2name.Text;
        string type_2 = type2.Text;
        string title_2 = title2.Text;
        string city_2 = city2.Text;
        string state_2 = state2.Text;
        string country_2 = country2.Text;
        string emp2_mm_from = mmfrom2.Text;
        string emp2_yyyy_from = yyfrom2.Text;
        string emp2_mm_to = mmto2.Text;
        string emp2_yyyy_to = yyto2.Text;
        string describe_2 = describe2.Text;
        string emp3_name = emp3name.Text;
        string type_3 = type3.Text;
        string title_3 = title3.Text;
        string city_3 = city3.Text;
        string state_3 = state3.Text;
        string country_3 = country3.Text;
        string emp3_mm_from = mmfrom3.Text;
        string emp3_yyyy_from = yyfrom3.Text;
        string emp3_mm_to = mmto3.Text;
        string emp3_yyyy_to = yyto3.Text;
        string describe_3 = describe3.Text;
//open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
string MysqlConnection ="Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

//update function
        string updateCommand = "update emp_info set app_id=@app_id,emp1_name=@emp1name,type1=@type1,title1=@title1,city1=@city1,state1=@state1,country1=@country1,emp1_mmfrom=@mmfrom1,emp1_yyyyfrom=@yyfrom1,emp1_mmto=@mmto1,emp1_yyyyto=@yyto1,describe1=@describe1,emp2_name=@emp2name,type2=@type2,title2=@title2,city2=@city2,state2=@state2,country2=@country2,emp2_mmfrom=@mmfrom2,emp2_yyyyfrom=@yyfrom2,emp2_mmto=@mmto2,emp2_yyyyto=@yyto2,describe2=@describe2,emp3_name=@emp3name,type3=@type3,title3=@title3,city3=@city3,state3=@state3,country3=@country3,emp3_mmfrom=@mmfrom3,emp3_yyyyfrom=@yyfrom3,emp3_mmto=@mmto3,emp3_yyyyto=@yyto3,describe3=@describe3 where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
(updateCommand, myConnection);
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
        cmd.Parameters.Add("@emp2name", System.Data.SqlDbType.NChar, 100).Value = emp2_name;
        cmd.Parameters.Add("@type2", System.Data.SqlDbType.NChar, 100).Value = type_2;
        cmd.Parameters.Add("@title2", System.Data.SqlDbType.NChar, 100).Value = title_2;
        cmd.Parameters.Add("@city2", System.Data.SqlDbType.NChar, 50).Value = city_2;
        cmd.Parameters.Add("@state2", System.Data.SqlDbType.NChar, 50).Value = state_2;
        cmd.Parameters.Add("@country2", System.Data.SqlDbType.NChar, 50).Value = country_2;
        cmd.Parameters.Add("@mmfrom2", System.Data.SqlDbType.NChar, 10).Value = emp2_mm_from;
        cmd.Parameters.Add("@yyfrom2", System.Data.SqlDbType.NChar, 10).Value = emp2_yyyy_from;
        cmd.Parameters.Add("@mmto2", System.Data.SqlDbType.NChar, 10).Value = emp2_mm_to;
        cmd.Parameters.Add("@yyto2", System.Data.SqlDbType.NChar, 10).Value = emp2_yyyy_to;
        cmd.Parameters.Add("@describe2", System.Data.SqlDbType.Text).Value = describe_2;
        cmd.Parameters.Add("@emp3name", System.Data.SqlDbType.NChar, 100).Value = emp3_name;
        cmd.Parameters.Add("@type3", System.Data.SqlDbType.NChar, 100).Value = type_3;
        cmd.Parameters.Add("@title3", System.Data.SqlDbType.NChar, 100).Value = title_3;
        cmd.Parameters.Add("@city3", System.Data.SqlDbType.NChar, 50).Value = city_3;
        cmd.Parameters.Add("@state3", System.Data.SqlDbType.NChar, 50).Value = state_3;
        cmd.Parameters.Add("@country3", System.Data.SqlDbType.NChar, 50).Value = country_3;
        cmd.Parameters.Add("@mmfrom3", System.Data.SqlDbType.NChar, 10).Value = emp3_mm_from;
        cmd.Parameters.Add("@yyfrom3", System.Data.SqlDbType.NChar, 10).Value = emp3_yyyy_from;
        cmd.Parameters.Add("@mmto3", System.Data.SqlDbType.NChar, 10).Value = emp3_mm_to;
        cmd.Parameters.Add("@yyto3", System.Data.SqlDbType.NChar, 10).Value = emp3_yyyy_to;
        cmd.Parameters.Add("@describe3", System.Data.SqlDbType.Text).Value = describe_3;
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
        string emp2_name = emp2name.Text;
        string type_2 = type2.Text;
        string title_2 = title2.Text;
        string city_2 = city2.Text;
        string state_2 = state2.Text;
        string country_2 = country2.Text;
        string emp2_mm_from = mmfrom2.Text;
        string emp2_yyyy_from = yyfrom2.Text;
        string emp2_mm_to = mmto2.Text;
        string emp2_yyyy_to = yyto2.Text;
        string describe_2 = describe2.Text;
        string emp3_name = emp3name.Text;
        string type_3 = type3.Text;
        string title_3 = title3.Text;
        string city_3 = city3.Text;
        string state_3 = state3.Text;
        string country_3 = country3.Text;
        string emp3_mm_from = mmfrom3.Text;
        string emp3_yyyy_from = yyfrom3.Text;
        string emp3_mm_to = mmto3.Text;
        string emp3_yyyy_to = yyto3.Text;
        string describe_3 = describe3.Text;
        //open connection, data source is the sever name; initial catalog is the name of the database, integrated security is because i use the a windows authentification
        string MysqlConnection = "Data Source = LENDLICE-PC\\SQLEXPRESS; Initial Catalog = ruapply;Integrated Security = True";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        //update function
        string updateCommand = "update emp_info set app_id=@app_id,emp1_name=@emp1name,type1=@type1,title1=@title1,city1=@city1,state1=@state1,country1=@country1,emp1_mmfrom=@mmfrom1,emp1_yyyyfrom=@yyfrom1,emp1_mmto=@mmto1,emp1_yyyyto=@yyto1,describe1=@describe1,emp2_name=@emp2name,type2=@type2,title2=@title2,city2=@city2,state2=@state2,country2=@country2,emp2_mmfrom=@mmfrom2,emp2_yyyyfrom=@yyfrom2,emp2_mmto=@mmto2,emp2_yyyyto=@yyto2,describe2=@describe2,emp3_name=@emp3name,type3=@type3,title3=@title3,city3=@city3,state3=@state3,country3=@country3,emp3_mmfrom=@mmfrom3,emp3_yyyyfrom=@yyfrom3,emp3_mmto=@mmto3,emp3_yyyyto=@yyto3,describe3=@describe3 where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand
        (updateCommand, myConnection);
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
        cmd.Parameters.Add("@emp2name", System.Data.SqlDbType.NChar, 100).Value = emp2_name;
        cmd.Parameters.Add("@type2", System.Data.SqlDbType.NChar, 100).Value = type_2;
        cmd.Parameters.Add("@title2", System.Data.SqlDbType.NChar, 100).Value = title_2;
        cmd.Parameters.Add("@city2", System.Data.SqlDbType.NChar, 50).Value = city_2;
        cmd.Parameters.Add("@state2", System.Data.SqlDbType.NChar, 50).Value = state_2;
        cmd.Parameters.Add("@country2", System.Data.SqlDbType.NChar, 50).Value = country_2;
        cmd.Parameters.Add("@mmfrom2", System.Data.SqlDbType.NChar, 10).Value = emp2_mm_from;
        cmd.Parameters.Add("@yyfrom2", System.Data.SqlDbType.NChar, 10).Value = emp2_yyyy_from;
        cmd.Parameters.Add("@mmto2", System.Data.SqlDbType.NChar, 10).Value = emp2_mm_to;
        cmd.Parameters.Add("@yyto2", System.Data.SqlDbType.NChar, 10).Value = emp2_yyyy_to;
        cmd.Parameters.Add("@describe2", System.Data.SqlDbType.Text).Value = describe_2;
        cmd.Parameters.Add("@emp3name", System.Data.SqlDbType.NChar, 100).Value = emp3_name;
        cmd.Parameters.Add("@type3", System.Data.SqlDbType.NChar, 100).Value = type_3;
        cmd.Parameters.Add("@title3", System.Data.SqlDbType.NChar, 100).Value = title_3;
        cmd.Parameters.Add("@city3", System.Data.SqlDbType.NChar, 50).Value = city_3;
        cmd.Parameters.Add("@state3", System.Data.SqlDbType.NChar, 50).Value = state_3;
        cmd.Parameters.Add("@country3", System.Data.SqlDbType.NChar, 50).Value = country_3;
        cmd.Parameters.Add("@mmfrom3", System.Data.SqlDbType.NChar, 10).Value = emp3_mm_from;
        cmd.Parameters.Add("@yyfrom3", System.Data.SqlDbType.NChar, 10).Value = emp3_yyyy_from;
        cmd.Parameters.Add("@mmto3", System.Data.SqlDbType.NChar, 10).Value = emp3_mm_to;
        cmd.Parameters.Add("@yyto3", System.Data.SqlDbType.NChar, 10).Value = emp3_yyyy_to;
        cmd.Parameters.Add("@describe3", System.Data.SqlDbType.Text).Value = describe_3;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
        Response.Redirect("application1.aspx");
    }
    protected void type1_TextChanged(object sender, EventArgs e)
    {

    }
}
