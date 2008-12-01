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

public partial class userapplication : System.Web.UI.Page
{
    int ruid = 3;
    int app_id = 3;
    public static string psextension;
    public static string resumeextension;

    protected void save1_Click(object sender, EventArgs e)
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
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        string updateCommand = "update program_info set app_id=@app_id,college_name=@collegename,college_campus=@campus,college_school=@gradschool,college_program=@program,objective=@enrollobj,entry_term=@entryterm,status=@fullorhalf,area=@area,faculty=@faculty,othercollege=@otherschool where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@collegename", System.Data.SqlDbType.NChar, 100).Value = college_name;
        cmd.Parameters.Add("@campus", System.Data.SqlDbType.NChar, 100).Value = college_campus;
        cmd.Parameters.Add("@gradschool", System.Data.SqlDbType.NChar, 100).Value = college_school;
        cmd.Parameters.Add("@program", System.Data.SqlDbType.NChar, 100).Value = college_program;
        cmd.Parameters.Add("@enrollobj", System.Data.SqlDbType.NChar, 10).Value = objective;
        cmd.Parameters.Add("@entryterm", System.Data.SqlDbType.NChar, 20).Value = entry_term;
        cmd.Parameters.Add("@fullorhalf", System.Data.SqlDbType.NChar, 50).Value = status;
        cmd.Parameters.Add("@area", System.Data.SqlDbType.NChar, 50).Value = area0;
        cmd.Parameters.Add("@faculty", System.Data.SqlDbType.Text).Value = faculty0;
        cmd.Parameters.Add("@otherschool", System.Data.SqlDbType.Text).Value = othercollege;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
    }
    protected void nextpage1_Click(object sender, EventArgs e)
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
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        string updateCommand = "update program_info set app_id=@app_id,college_name=@collegename,college_campus=@campus,college_school=@gradschool,college_program=@program,objective=@enrollobj,entry_term=@entryterm,status=@fullorhalf,area=@area,faculty=@faculty,othercollege=@otherschool where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);
        cmd.Parameters.Add("@ruid", System.Data.SqlDbType.Int).Value = ruid;
        cmd.Parameters.Add("@app_id", System.Data.SqlDbType.Int).Value = app_id;
        cmd.Parameters.Add("@collegename", System.Data.SqlDbType.NChar, 100).Value = college_name;
        cmd.Parameters.Add("@campus", System.Data.SqlDbType.NChar, 100).Value = college_campus;
        cmd.Parameters.Add("@gradschool", System.Data.SqlDbType.NChar, 100).Value = college_school;
        cmd.Parameters.Add("@program", System.Data.SqlDbType.NChar, 100).Value = college_program;
        cmd.Parameters.Add("@enrollobj", System.Data.SqlDbType.NChar, 10).Value = objective;
        cmd.Parameters.Add("@entryterm", System.Data.SqlDbType.NChar, 20).Value = entry_term;
        cmd.Parameters.Add("@fullorhalf", System.Data.SqlDbType.NChar, 50).Value = status;
        cmd.Parameters.Add("@area", System.Data.SqlDbType.NChar, 50).Value = area0;
        cmd.Parameters.Add("@faculty", System.Data.SqlDbType.Text).Value = faculty0;
        cmd.Parameters.Add("@otherschool", System.Data.SqlDbType.Text).Value = othercollege;
        cmd.ExecuteNonQuery();
        myConnection.Close();
        Response.Write("Processing...");
    }
    protected void previouspage2_Click(object sender, EventArgs e)
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
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        //update function
        string updateCommand = "update emp_info set app_id=@app_id,emp1_name=@emp1name,type1=@type1,title1=@title1,city1=@city1,state1=@state1,country1=@country1,emp1_mmfrom=@mmfrom1,emp1_yyyyfrom=@yyfrom1,emp1_mmto=@mmto1,emp1_yyyyto=@yyto1,describe1=@describe1,emp2_name=@emp2name,type2=@type2,title2=@title2,city2=@city2,state2=@state2,country2=@country2,emp2_mmfrom=@mmfrom2,emp2_yyyyfrom=@yyfrom2,emp2_mmto=@mmto2,emp2_yyyyto=@yyto2,describe2=@describe2,emp3_name=@emp3name,type3=@type3,title3=@title3,city3=@city3,state3=@state3,country3=@country3,emp3_mmfrom=@mmfrom3,emp3_yyyyfrom=@yyfrom3,emp3_mmto=@mmto3,emp3_yyyyto=@yyto3,describe3=@describe3 where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);
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
    protected void save2_Click(object sender, EventArgs e)
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
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        //update function
        string updateCommand = "update emp_info set app_id=@app_id,emp1_name=@emp1name,type1=@type1,title1=@title1,city1=@city1,state1=@state1,country1=@country1,emp1_mmfrom=@mmfrom1,emp1_yyyyfrom=@yyfrom1,emp1_mmto=@mmto1,emp1_yyyyto=@yyto1,describe1=@describe1,emp2_name=@emp2name,type2=@type2,title2=@title2,city2=@city2,state2=@state2,country2=@country2,emp2_mmfrom=@mmfrom2,emp2_yyyyfrom=@yyfrom2,emp2_mmto=@mmto2,emp2_yyyyto=@yyto2,describe2=@describe2,emp3_name=@emp3name,type3=@type3,title3=@title3,city3=@city3,state3=@state3,country3=@country3,emp3_mmfrom=@mmfrom3,emp3_yyyyfrom=@yyfrom3,emp3_mmto=@mmto3,emp3_yyyyto=@yyto3,describe3=@describe3 where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);
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
    protected void nextpage2_Click(object sender, EventArgs e)
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
        string MysqlConnection = "Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply";
        SqlConnection myConnection = new SqlConnection(MysqlConnection);
        myConnection.Open();

        //update function
        string updateCommand = "update emp_info set app_id=@app_id,emp1_name=@emp1name,type1=@type1,title1=@title1,city1=@city1,state1=@state1,country1=@country1,emp1_mmfrom=@mmfrom1,emp1_yyyyfrom=@yyfrom1,emp1_mmto=@mmto1,emp1_yyyyto=@yyto1,describe1=@describe1,emp2_name=@emp2name,type2=@type2,title2=@title2,city2=@city2,state2=@state2,country2=@country2,emp2_mmfrom=@mmfrom2,emp2_yyyyfrom=@yyfrom2,emp2_mmto=@mmto2,emp2_yyyyto=@yyto2,describe2=@describe2,emp3_name=@emp3name,type3=@type3,title3=@title3,city3=@city3,state3=@state3,country3=@country3,emp3_mmfrom=@mmfrom3,emp3_yyyyfrom=@yyfrom3,emp3_mmto=@mmto3,emp3_yyyyto=@yyto3,describe3=@describe3 where ruid=@ruid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(updateCommand, myConnection);
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
    protected void uploadPS_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = true;
        Confirm1.Visible = true; 
    }
    protected void Confirm1_Click(object sender, EventArgs e)
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
                        psextension = fileExtension;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs("D:/yan/web/ruapply/UploadedFiles/ps/ps"
                    + ruid + psextension);
                    Label1.Text = "File uploaded!";
                    FileUpload1.Visible = false;
                    Confirm1.Visible = false;
                    deleteps.Visible = true;
                    uploadPS.Enabled = false;
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
    protected void deleteps_Click(object sender, EventArgs e)
    {
        //foreach (string filename in System.IO.Directory.GetFiles("D:/yan/web/ruapply/UploadedFiles/ps/"))
        //{
        //    System.IO.File.Delete(filename);
        //}
        File.Delete("D:/yan/web/ruapply/UploadedFiles/ps/ps" + ruid + psextension);
        uploadPS.Enabled = true;
        Label1.Text = "There is no PS uploaded.";
        deleteps.Visible = false;
    }
    protected void uploadResume_Click(object sender, EventArgs e)
    {
        FileUpload2.Visible = true;
        Confirm2.Visible = true; 
    }
    protected void Confirm2_Click(object sender, EventArgs e)
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
                        resumeextension = fileExtension;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileUpload2.PostedFile.SaveAs("D:/yan/web/ruapply/UploadedFiles/resume/resume"
                    + ruid + resumeextension);
                    Label2.Text = "File uploaded!";
                    FileUpload2.Visible = false;
                    Confirm2.Visible = false;
                    Deleteresume.Visible = true;
                    uploadResume.Enabled = false;
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
    }
    protected void Deleteresume_Click(object sender, EventArgs e)
    {
        //foreach (string filename in System.IO.Directory.GetFiles("D:/yan/web/ruapply/UploadedFiles/resume/"))
        //{
        //    System.IO.File.Delete(filename);
        //}
        File.Delete("D:/yan/web/ruapply/UploadedFiles/resume/resume" + ruid + resumeextension);
        uploadResume.Enabled = true;
        Label2.Text = "There is no Resume uploaded.";
        Deleteresume.Visible = false;
    }
    protected void previouspage3_Click(object sender, EventArgs e)
    {

    }
    protected void save3_Click(object sender, EventArgs e)
    {

    }
    protected void nextpage3_Click(object sender, EventArgs e)
    {

    }
    protected void previouspage4_Click(object sender, EventArgs e)
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
    protected void save4_Click(object sender, EventArgs e)
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
    protected void finish_Click(object sender, EventArgs e)
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

        collegenameshow.Text = collegename.Text;
        campusshow.Text = campus.Text;
        gradschoolshow.Text = gradschool.Text;
        programshow.Text = program.Text;
        enrollobjshow.Text = enrollobj.Text;
        entrytermshow.Text = entryterm.Text;
        fullorhalfshow.Text = fullorhalf.Text;
        areashow.Text = area.Text;
        facultyshow.Text = faculty.Text;
        otherschoolshow.Text = otherschool.Text;
                              
        emp1nameshow.Text = emp1name.Text;
        type1show.Text = type1.Text;
        title1show.Text = title1.Text;
        city1show.Text = city1.Text;
        state1show.Text = state1.Text;
        country1show.Text = country1.Text;
        mmfrom1show.Text = mmfrom1.Text;
        yyfrom1show.Text = yyfrom1.Text;
        mmto1show.Text = mmto1.Text;
        yyto1show.Text = yyto1.Text;
        describe1show.Text = describe1.Text;
        emp2nameshow.Text = emp2name.Text;
        type2show.Text = type2.Text;
        title2show.Text = title2.Text;
        city2show.Text = city2.Text;
        state2show.Text = state2.Text;
        country2show.Text = country2.Text;
        mmfrom2show.Text = mmfrom2.Text;
        yyfrom2show.Text = yyfrom2.Text;
        mmto2show.Text = mmto2.Text;
        yyto2show.Text = yyto2.Text;
        describe2show.Text = describe2.Text;
        emp3nameshow.Text = emp3name.Text;
        type3show.Text = type3.Text;
        title3show.Text = title3.Text;
        city3show.Text = city3.Text;
        state3show.Text = state3.Text;
        country3show.Text = country3.Text;
        mmfrom3show.Text = mmfrom3.Text;
        yyfrom3show.Text = yyfrom3.Text;
        mmto3show.Text = mmto3.Text;
        yyto3show.Text = yyto3.Text;
        describe3show.Text = describe3.Text;
                          
        //[View] [Delete]
        assistyesornoshow.Text = assistyesorno.Text;
        if (assistyesorno.Text == "Yes")
        {
            if (fellow.Checked)
            { fellowshow.Text = fellow.Text; }
            if (ta.Checked)
            { tashow.Text = ta.Text; }
            if (ra.Checked)
            { rashow.Text = ra.Text; }
            if (tw.Checked)
            { twshow.Text = tw.Text; }
        }
        assistexpshow.Text = explainforscholarship.Text;     
               
        rec1_fnameshow.Text = rec1_fname.Text;
        rec1_lnameshow.Text = rec1_lname.Text;
        rec1_orgshow.Text = rec1_org.Text;
        rec1_phoneshow.Text = rec1_phone.Text;
        rec1_addshow.Text = rec1_add.Text;
        rec1_emailshow.Text = rec1_email.Text;
        online1show.Text = rec1_online.Text;
        rec2_fnameshow.Text = rec2_fname.Text;
        rec2_lnameshow.Text = rec2_lname.Text;
        rec2_orgshow.Text = rec2_org.Text;
        rec2_phoneshow.Text = rec2_phone.Text;
        rec2_addshow.Text = rec2_add.Text;
        rec2_emailshow.Text = rec2_email.Text;
        online2show.Text = rec2_online.Text;
        rec3_fnameshow.Text = rec3_fname.Text;
        rec3_lnameshow.Text = rec3_lname.Text;
        rec3_orgshow.Text = rec3_org.Text;
        rec3_phoneshow.Text = rec3_phone.Text;
        rec3_addshow.Text = rec3_add.Text;
        rec3_emailshow.Text = rec3_email.Text;
        online3show.Text = rec3_online.Text;
    }

    protected void Modify_Click(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        MailMessage mail1 = new MailMessage();
        mail1.To = rec1_email.Text;
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

        try
        {
            SmtpMail.SmtpServer = "smtp.gmail.com";
            SmtpMail.Send(mail1);
            //Label2.Text = "Successful sent！";
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
            //Label2.Text="Fail to send the email！"; 
        } 
        //SmtpMail.SmtpServer = "smtp.gmail.com";
        //SmtpMail.Send(mail);

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

        try
        {
            SmtpMail.SmtpServer = "smtp.gmail.com";
            SmtpMail.Send(mail2);
            //Label2.Text = "Successful sent！";
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
            //Label2.Text="Fail to send the email！"; 
        }
        //SmtpMail.SmtpServer = "smtp.gmail.com";
        //SmtpMail.Send(mail);

        MailMessage mail3 = new MailMessage();
        mail3.To = rec3_email.Text;
        mail3.From = "ruapplysystem@gmail.com";
        mail3.Subject = "testcase";
        mail3.Body = "hello, man";

        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2);
        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 465);
        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", 1);

        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", true);
        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "ruapplysystem@gmail.com");
        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "areyouapply");
        mail3.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendemailaddress", "ruapplysystem@gmail.com");

        try
        {
            SmtpMail.SmtpServer = "smtp.gmail.com";
            SmtpMail.Send(mail3);
            //Label2.Text = "Successful sent！";
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
            //Label2.Text="Fail to send the email！"; 
        }
        //SmtpMail.SmtpServer = "smtp.gmail.com";
        //SmtpMail.Send(mail);
    }
    protected void reture_Click(object sender, EventArgs e)
    {
        Response.Redirect("myaccount.aspx");
    }
}
