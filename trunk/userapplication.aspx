<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userapplication.aspx.cs" Inherits="userapplication" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Userapplication</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
<div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
 <div id="mainContent">
 <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
 <asp:View ID="View1" runat="server">
          <table width="100%"><tr><td align="center"><img src="images/application1-4.png" /></td></tr></table>
  <h1 class="style1">Program Information</h1>
      <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2" class="style2"><strong><u>Campus and Program</u></td>
      </tr>
      <tr>
        <td width="50%" height="40" align=right>*College Name</td>
        <td width="50%" height="40">
            <asp:DropDownList ID="collegename" runat="server" 
                >
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>Rutgers University</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToValidate="collegename" ErrorMessage="* Please select ..." 
                Operator="NotEqual" ValueToCompare="Select One ..."></asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Campus</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="campus" runat="server" 
                >
                <asp:ListItem Selected="True" Value="Select One ...">Select One ...</asp:ListItem>
                <asp:ListItem Value="New Brunswick">New Brunswick</asp:ListItem>
                <asp:ListItem>Newark</asp:ListItem>
                <asp:ListItem>Camdon</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ControlToValidate="campus" ErrorMessage="* Please select ..." 
                Operator="NotEqual" ValueToCompare="Select One ..."></asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Graduate School</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="gradschool" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>School of Arts and Science</asp:ListItem>
                <asp:ListItem>School of Environmental and Biological Sciences</asp:ListItem>
                <asp:ListItem>College of Nursing</asp:ListItem>
                <asp:ListItem>Edward J. Bloustein School of Planning and Public Policy</asp:ListItem>
                <asp:ListItem>Ernest Mario School of Pharmacy</asp:ListItem>
                <asp:ListItem>Graduate School–New Brunswick</asp:ListItem>
                <asp:ListItem>Graduate School of Applied and Professional Psychology</asp:ListItem>
                <asp:ListItem>Graduate School of Education</asp:ListItem>
                <asp:ListItem>Mason Gross School of the Arts</asp:ListItem>
                <asp:ListItem>Rutgers Business School–Newark and New Brunswick</asp:ListItem>
                <asp:ListItem>School of Communication, Information and Library Studies</asp:ListItem>
                <asp:ListItem>School of Engineering</asp:ListItem>
                <asp:ListItem>School of Management and Labor Relations</asp:ListItem>
                <asp:ListItem>School of Social Work</asp:ListItem>
                <asp:ListItem>Summer Session</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<br />
            <asp:CompareValidator ID="CompareValidator3" runat="server" 
                ControlToValidate="gradschool" ErrorMessage="* Please select ..." 
                Operator="NotEqual" ValueToCompare="Select One ..."></asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Program</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="program" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>Biomedical Engineering</asp:ListItem>
                <asp:ListItem>Chemical and Biochemical Engineering</asp:ListItem>
                <asp:ListItem>Civil and Environmental Engineering</asp:ListItem>
                <asp:ListItem>Electrical and Computer Engineering</asp:ListItem>
                <asp:ListItem>Industrial and Systems Engineering</asp:ListItem>
                <asp:ListItem>Materials Science and Engineering</asp:ListItem>
                <asp:ListItem>Mechanical and Aerospace Engineering</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator4" runat="server" 
                ControlToValidate="program" ErrorMessage="* Please select ..." 
                Operator="NotEqual" ValueToCompare="Select One ..."></asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Other Enrollment Information</u></strong></td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Enrollment Objective </p></td>
        <td height="40">
            <asp:DropDownList ID="enrollobj" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>MS</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator5" runat="server" 
                ControlToValidate="enrollobj" ErrorMessage="* Please select ..." 
                Operator="NotEqual" ValueToCompare="Select One ..."></asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Entry Term<br />
        </p></td>
        <td height="40">
            <asp:DropDownList ID="entryterm" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>Spring 2009</asp:ListItem>
                <asp:ListItem>Summer 2009</asp:ListItem>
                <asp:ListItem>Autumn 2009</asp:ListItem>
                <asp:ListItem>Spring 2010</asp:ListItem>
                <asp:ListItem>Summer 2010</asp:ListItem>
                <asp:ListItem>Autumn 2010</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator6" runat="server" 
                ControlToValidate="entryterm" ErrorMessage="* Please select ..." 
                Operator="NotEqual" ValueToCompare="Select One ..."></asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Full Time/Half Time<br />
        </div></td>
        <td height="40">
            <asp:DropDownList ID="fullorhalf" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>Full Time</asp:ListItem>
                <asp:ListItem>Half Time</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator7" runat="server" 
                ControlToValidate="fullorhalf" ErrorMessage="* Please select ..." 
                Operator="NotEqual" ValueToCompare="Select One ..."></asp:CompareValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Area of Interest</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="area" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>Communications</asp:ListItem>
                <asp:ListItem>Computer Engnieering</asp:ListItem>
                <asp:ListItem>Digital Signal Processing</asp:ListItem>
                <asp:ListItem>Solid State Electronic</asp:ListItem>
                <asp:ListItem>System and Control</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td height="40">Please list the faculty with whom you would like to study separate 
            each name with a semicolon(;).<br />
            (300 characters maximum)</td>
        <td height="40">
            <asp:TextBox ID="faculty" runat="server" TextMode="MultiLine" MaxLength="300"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40">Please list other graduate schools to which you are applying 
            separate each school name with a semicolon(;).<br />
            (300 characters maximum)</td>
        <td>
            <asp:TextBox ID="otherschool" runat="server" TextMode="MultiLine" 
                MaxLength="300"></asp:TextBox>
          </td>
      </tr>
        <caption>
            &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" height="40">
                    <div align="center">
                        &nbsp;<asp:Button ID="save1" runat="server" onclick="save1_Click" Text="Save" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="nextpage1" runat="server" onclick="nextpage1_Click" 
                            Text="Next Page" CommandArgument="View2" CommandName="SwitchViewByID" />
                        </a>
                    </div>
                </td>
            </tr>
        </caption>
    </table>
      </form>
          </asp:View>
  <br />
  <asp:View ID="View2" runat="server">
          <table width="100%"><tr><td align="center"><img src="images/application2-4.png" /></td></tr></table>
  <h1>Employment Experience</h1>
            <form id="form2" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Most Recent Employment Experience</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="emp1name" runat="server" MaxLength="100"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="type1" runat="server" MaxLength="100" ></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="title1" runat="server" MaxLength="100"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="city1" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="state1" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="country1" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>USA </asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td>
        <td width="50%" height="40">From<asp:DropDownList ID="mmfrom1" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:DropDownList ID="yyfrom1" runat="server" Height="16px">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<label>
            <br />
            To&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="mmto1" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:DropDownList ID="yyto1" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            </label>
                    </td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum)</td>
        <td>
            <asp:TextBox ID="describe1" runat="server" TextMode="MultiLine" MaxLength="300"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Employment Experience</u> (Skip this section 
            if not applicable.)</strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name<Employer Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="emp2name" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="type2" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="title2" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">City</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="city2" runat="server" MaxLength="50"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">State</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="state2" runat="server" MaxLength="50"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Country     <td width="50%" height="40">
                                <asp:DropDownList ID="country2" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>China</asp:ListItem><asp:ListItem>USA</asp:ListItem><asp:ListItem>India</asp:ListItem><asp:ListItem></asp:ListItem></asp:DropDownList></td></tr><tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td><td width="50%" height="40"><label>
            From<asp:DropDownList ID="mmfrom2" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>01</asp:ListItem><asp:ListItem>02</asp:ListItem><asp:ListItem>03</asp:ListItem><asp:ListItem>04</asp:ListItem><asp:ListItem>05</asp:ListItem><asp:ListItem>06</asp:ListItem><asp:ListItem>07</asp:ListItem><asp:ListItem>08</asp:ListItem><asp:ListItem>09</asp:ListItem><asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem></asp:DropDownList>&nbsp; <asp:DropDownList 
                ID="yyfrom2" runat="server"><asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>1990</asp:ListItem><asp:ListItem>1991</asp:ListItem><asp:ListItem>1992</asp:ListItem><asp:ListItem>1993</asp:ListItem><asp:ListItem>1994</asp:ListItem><asp:ListItem>1995</asp:ListItem><asp:ListItem>1996</asp:ListItem><asp:ListItem>1997</asp:ListItem><asp:ListItem>1998</asp:ListItem><asp:ListItem>1999</asp:ListItem><asp:ListItem>2000</asp:ListItem><asp:ListItem>2001</asp:ListItem><asp:ListItem>2002</asp:ListItem><asp:ListItem>2003</asp:ListItem><asp:ListItem>2004</asp:ListItem><asp:ListItem>2005</asp:ListItem><asp:ListItem>2006</asp:ListItem><asp:ListItem>2007</asp:ListItem><asp:ListItem>2008</asp:ListItem><asp:ListItem>2009</asp:ListItem><asp:ListItem>2010</asp:ListItem></asp:DropDownList>&nbsp;<label>
            <br />To&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="mmto2" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>01</asp:ListItem><asp:ListItem>02</asp:ListItem><asp:ListItem>03</asp:ListItem><asp:ListItem>04</asp:ListItem><asp:ListItem>05</asp:ListItem><asp:ListItem>06</asp:ListItem><asp:ListItem>07</asp:ListItem><asp:ListItem>08</asp:ListItem><asp:ListItem>09</asp:ListItem><asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem></asp:DropDownList>&nbsp; <asp:DropDownList 
                ID="yyto2" runat="server"><asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>1990</asp:ListItem><asp:ListItem>1991</asp:ListItem><asp:ListItem>1992</asp:ListItem><asp:ListItem>1993</asp:ListItem><asp:ListItem>1994</asp:ListItem><asp:ListItem>1995</asp:ListItem><asp:ListItem>1996</asp:ListItem><asp:ListItem>1997</asp:ListItem><asp:ListItem>1998</asp:ListItem><asp:ListItem>1999</asp:ListItem><asp:ListItem>2000</asp:ListItem><asp:ListItem>2001</asp:ListItem><asp:ListItem>2002</asp:ListItem><asp:ListItem>2003</asp:ListItem><asp:ListItem>2004</asp:ListItem><asp:ListItem>2005</asp:ListItem><asp:ListItem>2006</asp:ListItem><asp:ListItem>2007</asp:ListItem><asp:ListItem>2008</asp:ListItem><asp:ListItem>2009</asp:ListItem><asp:ListItem>2010</asp:ListItem></asp:DropDownList>&nbsp; </label></td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum)</td><td>
            <asp:TextBox ID="describe2" runat="server" 
                    TextMode="MultiLine" MaxLength="300"></asp:TextBox></td></tr><tr>
        <td height="40" colspan="2"><strong><u>Employment Experience</u> (Skip this section if not applicable.)</strong></td></tr><tr>
        <td width="50%" height="40"><p align="right">Employer Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="emp3name" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="type3" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="title3" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">City</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="city3" runat="server" MaxLength="50"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">State</p></td><td width="50%" height="40">
            <asp:TextBox 
                ID="state3" runat="server" MaxLength="50"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Country</p></td><td width="50%" height="40">
                        <asp:DropDownList ID="country3" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>China</asp:ListItem><asp:ListItem>USA</asp:ListItem><asp:ListItem>India</asp:ListItem><asp:ListItem></asp:ListItem></asp:DropDownList></td></tr><tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td><td width="50%" height="40">
            <label>
             From<asp:DropDownList ID="mmfrom3" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>01</asp:ListItem><asp:ListItem>02</asp:ListItem><asp:ListItem>03</asp:ListItem><asp:ListItem>04</asp:ListItem><asp:ListItem>05</asp:ListItem><asp:ListItem>06</asp:ListItem><asp:ListItem>07</asp:ListItem><asp:ListItem>08</asp:ListItem><asp:ListItem>09</asp:ListItem><asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem></asp:DropDownList>&nbsp; <asp:DropDownList 
                ID="yyfrom3" runat="server"><asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>1990</asp:ListItem><asp:ListItem>1991</asp:ListItem><asp:ListItem>1992</asp:ListItem><asp:ListItem>1993</asp:ListItem><asp:ListItem>1994</asp:ListItem><asp:ListItem>1995</asp:ListItem><asp:ListItem>1996</asp:ListItem><asp:ListItem>1997</asp:ListItem><asp:ListItem>1998</asp:ListItem><asp:ListItem>1999</asp:ListItem><asp:ListItem>2000</asp:ListItem><asp:ListItem>2001</asp:ListItem><asp:ListItem>2002</asp:ListItem><asp:ListItem>2003</asp:ListItem><asp:ListItem>2004</asp:ListItem><asp:ListItem>2005</asp:ListItem><asp:ListItem>2006</asp:ListItem><asp:ListItem>2007</asp:ListItem><asp:ListItem>2008</asp:ListItem><asp:ListItem>2009</asp:ListItem><asp:ListItem>2010</asp:ListItem></asp:DropDownList>&nbsp;<label> <br />To&nbsp;&nbsp; &nbsp;<asp:DropDownList 
                ID="mmto3" runat="server"><asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>01</asp:ListItem><asp:ListItem>02</asp:ListItem><asp:ListItem>03</asp:ListItem><asp:ListItem>04</asp:ListItem><asp:ListItem>05</asp:ListItem><asp:ListItem>06</asp:ListItem><asp:ListItem>07</asp:ListItem><asp:ListItem>08</asp:ListItem><asp:ListItem>09</asp:ListItem><asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem></asp:DropDownList>&nbsp; <asp:DropDownList 
                ID="yyto3" runat="server"><asp:ListItem Selected="True">Select One ...</asp:ListItem><asp:ListItem>1990</asp:ListItem><asp:ListItem>1991</asp:ListItem><asp:ListItem>1992</asp:ListItem><asp:ListItem>1993</asp:ListItem><asp:ListItem>1994</asp:ListItem><asp:ListItem>1995</asp:ListItem><asp:ListItem>1996</asp:ListItem><asp:ListItem>1997</asp:ListItem><asp:ListItem>1998</asp:ListItem><asp:ListItem>1999</asp:ListItem><asp:ListItem>2000</asp:ListItem><asp:ListItem>2001</asp:ListItem><asp:ListItem>2002</asp:ListItem><asp:ListItem>2003</asp:ListItem><asp:ListItem>2004</asp:ListItem><asp:ListItem>2005</asp:ListItem><asp:ListItem>2006</asp:ListItem><asp:ListItem>2007</asp:ListItem><asp:ListItem>2008</asp:ListItem><asp:ListItem>2009</asp:ListItem><asp:ListItem>2010</asp:ListItem></asp:DropDownList>&nbsp; </label></td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum) </td>
        <td>
            <asp:TextBox ID="describe3" runat="server" TextMode="MultiLine" MaxLength="300"></asp:TextBox></td></tr><caption>&nbsp;</td> </tr><tr><td 
                colspan="2" height="40"><div align="center"><asp:Button ID="previouspage2" 
                    runat="server" onclick="previouspage2_Click" Text="Previous Page" 
                    CommandArgument="View1" CommandName="SwitchViewByID" />&nbsp;&nbsp;&nbsp; <asp:Button 
                    ID="save2" runat="server" onclick="save2_Click" Text="Save" />&nbsp;&nbsp;&nbsp; <asp:Button 
                    ID="nextpage2" runat="server" onclick="nextpage2_Click" Text="Next Page" 
                    CommandArgument="View3" CommandName="SwitchViewByID" /></a></div></td></tr></caption></table>
            </form>
          </asp:View>
   <br />
   <asp:View ID="View3" runat="server">
           <table width="100%"><tr><td align="center"><img src="images/application3-4.png" /></td></tr></table><h1>Supplemental Section</h1><form id="form3" enctype="multipart/form-data" runat="server">
           <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF" id="uploaddoc">
      <tr>
        <td width="50%" height="40" colspan="2"><u><span class="style1">Statement of Purpose</span></u><br /><br /><i>To upload a document in response to this question, please click the &quot;Upload&quot; button below. If your upload is successful, you will see a &quot;View Document&quot; button and a &quot;Delete&quot; button appear next to the question.</i></td></tr><tr>
        <td height="40" colspan="2">
            <asp:Button ID="uploadPS" runat="server" style="text-align: center; width: 320px;" 
                Text="Upload Statement of Purpose" onclick="uploadPS_Click" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
&nbsp;<br />
            <br />
            <asp:Button ID="Confirm1" runat="server" onclick="Confirm1_Click" Text="Confirm" 
                Visible="False" />
            <br />
            <br />
            <asp:Button ID="deleteps" runat="server" onclick="deleteps_Click" 
                Text="Delete Statement of Purpose" Visible="False" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label><br />
            <br />
            <br />
            <br />
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u><span class="style2">Resume</span></u></strong><br /><br />To upload a document in response to this question, please click the &quot;Upload&quot; button below. If your upload is successful, you will see a &quot;View Document&quot; button and a &quot;Delete&quot; button appear next to the question.</i></td></tr><tr>
        <td height="40" colspan="2">
            <asp:Button ID="uploadResume" runat="server" style="text-align: center" 
                Text="Upload Resume" onclick="uploadResume_Click" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" Visible="False" />
            <br />
            <br />
            <asp:Button ID="Confirm2" runat="server" onclick="Confirm2_Click" Text="Confirm" 
                Visible="False" />
            <br />
            <br />
            <asp:Button ID="Deleteresume" runat="server" onclick="Deleteresume_Click" 
                Text="Delete Resume" Visible="False" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text=" "></asp:Label><br />
            <br />
            <br />
            <br />
          </td>
      </tr>
      <tr>
        <td height="40" class="style2" ><strong><u><span class="style2">Assistantship</span><br />
            </u></strong></td></tr><tr><td>
        Do you wish to be considered for an assistantship?</td><td width="50%" height="40"><asp:RadioButtonList 
                       ID="assistyesorno" runat="server"  
                       ><asp:ListItem Selected="True">Yes</asp:ListItem><asp:ListItem>No</asp:ListItem></asp:RadioButtonList></td></tr><tr>
        <td height="40">Please specifiy your preferred type of assignment.</td><td>
            <asp:CheckBox 
                       ID="fellow" runat="server" Text="Fellowship" 
                        /><br /><asp:CheckBox ID="ta" 
                       runat="server"  
                       Text="Teaching Asistantship"  /><br /><asp:CheckBox 
                       ID="ra" runat="server" 
                       Text="Research Asistantship"  /><br /><asp:CheckBox 
                       ID="tw" runat="server" 
                       Text="Tuition Wavier"/></td></tr><tr>
        <td width="50%" height="40">Indicate any work or school experiences you have had that should be taken into consideration for granting you an assistantship.<br />(300 characters maximun)
          </td>
        <td width="50%" height="40">
            <asp:TextBox ID="explainforscholarship" runat="server" 
                       TextMode="MultiLine" MaxLength="300"></asp:TextBox></td></tr><caption>&nbsp;</td> </tr><tr><td 
                      colspan="2" height="40"><div align="center"><asp:Button ID="previouspage3" 
                          runat="server" onclick="previouspage3_Click" Text="Previous Page" 
                          CommandArgument="View2" CommandName="SwitchViewByID" />&nbsp;&nbsp;&nbsp; <asp:Button 
                          ID="save3" runat="server" onclick="save3_Click" Text="Save" />&nbsp;&nbsp;&nbsp; <asp:Button 
                          ID="nextpage3" runat="server" onclick="nextpage3_Click" Text="Next Page" 
                          CommandArgument="View4" CommandName="SwitchViewByID" /></a></div></td></tr></caption></table>
            </form>
          </asp:View>
    <br />
    <asp:View ID="View4" runat="server">
          <table width="100%"><tr><td align="center"><img src="images/application4-4.png" /></td></tr></table><h1>Recommendations</h1><form id="form4" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 1</u></strong></td></tr><tr>
        <td width="50%" height="40"><p align="right">*First Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec1_fname" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="rec1_fname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                runat="server" ControlToValidate="rec1_fname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Last Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec1_lname" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="rec1_lname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                runat="server" ControlToValidate="rec1_lname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec1_org" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Phone</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec1_phone" runat="server" MaxLength="20" ></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec1_add" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Email</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec1_email" runat="server" MaxLength="50"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="rec1_email" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                runat="server" ControlToValidate="rec1_email" 
                ErrorMessage="Must be a valid email address." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Use online recommendation form?</p></td><td width="50%" height="40">
    <asp:RadioButtonList ID="rec1_online" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem><asp:ListItem>No</asp:ListItem></asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="rec1_online" ErrorMessage="* Required Field"></asp:RequiredFieldValidator></td></tr><tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 2</u></strong></td></tr><tr>
        <td width="50%" height="40"><p align="right">*First Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec2_fname" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="rec2_fname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16" 
                runat="server" ControlToValidate="rec2_fname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Last Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec2_lname" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="rec2_lname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator17" 
                runat="server" ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$" ControlToValidate="rec2_lname"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec2_org" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Phone</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec2_phone" runat="server" MaxLength="20"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec2_add" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Email</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec2_email" runat="server" MaxLength="50"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="rec2_email" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18" 
                runat="server" ControlToValidate="rec2_email" 
                ErrorMessage="Must be a valid email address." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Use online recommendation form?</p></td><td width="50%" height="40">
    <asp:RadioButtonList ID="rec2_online" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem><asp:ListItem>No</asp:ListItem></asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="rec2_online" ErrorMessage="* Required Field"></asp:RequiredFieldValidator></td></tr><tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 3</u></strong></td></tr><tr>
        <td width="50%" height="40"><p align="right">*First Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec3_fname" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="rec3_fname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
                runat="server" ControlToValidate="rec3_fname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Last Name</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec3_lname" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="rec3_lname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator20" 
                runat="server" ControlToValidate="rec3_lname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec3_org" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Phone</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec3_phone" runat="server" MaxLength="20"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec3_add" runat="server" MaxLength="100"></asp:TextBox></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Email</p></td><td width="50%" height="40">
            <asp:TextBox 
                  ID="rec3_email" runat="server" MaxLength="50"></asp:TextBox>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="rec3_email" ErrorMessage="* Required Field"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator21" 
                runat="server" ControlToValidate="rec3_email" 
                ErrorMessage="Must be a valid email address." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td></tr><tr>
        <td width="50%" height="40"><p align="right">*Use online recommendation form?</p></td><td width="50%" height="40">
    <asp:RadioButtonList ID="rec3_online" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem><asp:ListItem>No</asp:ListItem></asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="rec3_online" ErrorMessage="* Required Field"></asp:RequiredFieldValidator></td></tr><caption>&nbsp;</td> </tr><tr><td 
                      colspan="2" height="40"><div align="center"><asp:Button ID="previouspage4" 
                          runat="server" onclick="previouspage4_Click" Text="Previous Page" 
                          CommandArgument="View3" CommandName="SwitchViewByID" />&nbsp;&nbsp;&nbsp; <asp:Button 
                          ID="save4" runat="server" onclick="save4_Click" Text="Save" />&nbsp;&nbsp;&nbsp; <asp:Button 
                          ID="Finish" runat="server" onclick="finish_Click" Text="Finish" 
                          CommandArgument="View5" CommandName="SwitchViewByID" /></div></td></tr></caption></table>
      </form>
          </asp:View>
     <br />
     <asp:View ID="View5" runat="server">
          <h1>Application Preview</h1><form id="form5" runat="server">
          <p>Please view your application, and modify any incorrect information you find.</p><table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Program Information</strong></td></tr><tr>
  <td width="50%" align=right>College Name</td><td width="50%" align=left>
      <asp:Label ID="collegenameshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Campus</td><td width="50%" align=left>
      <asp:Label ID="campusshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Graduate School</td><td width="50%" align=left>
      <asp:Label ID="gradschoolshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Program</td><td width="50%" align=left><asp:Label ID="programshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Enrollment Objective</td><td width="50%" align=left><asp:Label ID="enrollobjshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Entry Term</td><td width="50%" align=left><asp:Label ID="entrytermshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Status</td><td width="50%" align=left><asp:Label ID="fullorhalfshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Area of Interest</td><td width="50%" align=left><asp:Label ID="areashow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Faculty in Contact</td><td width="50%" align=left><asp:Label ID="facultyshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Other Schools You Are Applying</td><td width="50%" align=left><asp:Label ID="otherschoolshow" runat="server"></asp:Label></td></tr></table><table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Employment History</strong></td></tr><tr>
    <td height="40" colspan="2"><strong>Employment 1</strong></td></tr><tr>
  <td width="50%" align=right>Employer Name</td><td width="50%" align=left><asp:Label ID="emp1nameshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Type of Industry</td><td width="50%" align=left><asp:Label ID="type1show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Job Title</td><td width="50%" align=left><asp:Label ID="title1show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>City</td><td width="50%" align=left><asp:Label ID="city1show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>State</td><td width="50%" align=left><asp:Label ID="state1show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Country</td><td width="50%" align=left><asp:Label ID="country1show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Dates of Employment</td><td width="50%" align=left><asp:Label ID="mmfrom1show" runat="server"></asp:Label>/<asp:Label 
          ID="yyfrom1show" runat="server"></asp:Label>- <asp:Label ID="mmto1show" 
          runat="server"></asp:Label>/<asp:Label ID="yyto1show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Job Description</td><td width="50%" align=left><asp:Label ID="describe1show" runat="server"></asp:Label></td></tr><tr>
  <td height="40" colspan="2"><strong>Employment 2</strong></td></tr><tr>
  <td width="50%" align=right>Employer Name</td><td width="50%" align=left><asp:Label ID="emp2nameshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Type of Industry</td><td width="50%" align=left><asp:Label ID="type2show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Job Title</td><td width="50%" align=left><asp:Label ID="title2show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>City</td><td width="50%" align=left><asp:Label ID="city2show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>State</td><td width="50%" align=left><asp:Label ID="state2show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Country</td><td width="50%" align=left><asp:Label ID="country2show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Dates of Employment</td><td width="50%" align=left><asp:Label ID="mmfrom2show" runat="server"></asp:Label>/<asp:Label 
          ID="yyfrom2show" runat="server"></asp:Label>- <asp:Label ID="mmto2show" 
          runat="server"></asp:Label>/<asp:Label ID="yyto2show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Job Description</td><td width="50%" align=left><asp:Label ID="describe2show" runat="server"></asp:Label></td></tr><tr>
  <td height="40" colspan="2"><strong>Employment 3</strong></td></tr><tr>
  <td width="50%" align=right>Employer Name</td><td width="50%" align=left><asp:Label ID="emp3nameshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Type of Industry</td><td width="50%" align=left><asp:Label ID="type3show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Job Title</td><td width="50%" align=left><asp:Label ID="title3show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>City</td><td width="50%" align=left><asp:Label ID="city3show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>State</td><td width="50%" align=left><asp:Label ID="state3show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Country</td><td width="50%" align=left><asp:Label ID="country3show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Dates of Employment</td><td width="50%" align=left><asp:Label ID="mmfrom3show" runat="server"></asp:Label>/<asp:Label 
          ID="yyfrom3show" runat="server"></asp:Label>- <asp:Label ID="mmto3show" 
          runat="server"></asp:Label>/<asp:Label ID="yyto3show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Job Description</td><td width="50%" align=left><asp:Label ID="describe3show" runat="server"></asp:Label></td></tr></table><table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Supplemental Documents</strong></td></tr><tr>
  <td width="50%" align=right>Statement of Purpose</td><td width="50%" align=left><asp:LinkButton 
                      ID="viewps" runat="server" Enabled="True" onclick="viewps_Click">View</asp:LinkButton></td></tr><tr>
  <td width="50%" align=right>Resume</td><td width="50%" align=left><asp:LinkButton 
                      ID="viewresume" runat="server" Enabled="True" onclick="viewresume_Click">View</asp:LinkButton></td></tr><tr>
  <td width="50%" align=right>Assistantship Intent</td><td width="50%" align=left>
      <asp:Label ID="assistyesornoshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Preferred Type of Assignment</td><td width="50%" align=left>
      <asp:Label 
                      ID="fellowshow" runat="server"></asp:Label><br /><asp:Label ID="tashow" 
                      runat="server"></asp:Label><br /><asp:Label ID="rashow" runat="server"></asp:Label><br /><asp:Label 
                      ID="twshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Related Experience</td><td width="50%" align=left>
      <asp:Label ID="assistexpshow" runat="server"></asp:Label></td></tr></table><table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Recommendations</strong></td></tr><tr>
  <td width="50%" align=right><strong>Provider 1 Name</strong></td><td width="50%" align=left><strong><asp:Label ID="rec1_fnameshow" runat="server"></asp:Label>&nbsp;<asp:Label ID="rec1_lnameshow" runat="server"></asp:Label></strong></td></tr><tr>
  <td width="50%" align=right>Organization</td><td width="50%" align=left>
      <asp:Label ID="rec1_orgshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Phone</td><td width="50%" align=left>
      <asp:Label ID="rec1_phoneshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Mailing Address</td><td width="50%" align=left>
      <asp:Label ID="rec1_addshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Email</td><td width="50%" align=left>
      <asp:Label ID="rec1_emailshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Online Recommendation</td><td width="50%" align=left>
      <asp:Label ID="online1show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right><strong>Provider 2 Name</strong></td><td width="50%" align=left><strong><asp:Label ID="rec2_fnameshow" runat="server"></asp:Label>&nbsp;<asp:Label ID="rec2_lnameshow" runat="server"></asp:Label></strong></td></tr><tr>
  <td width="50%" align=right>Organization</td><td width="50%" align=left>
      <asp:Label ID="rec2_orgshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Phone</td><td width="50%" align=left>
      <asp:Label ID="rec2_phoneshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Mailing Address</td><td width="50%" align=left>
      <asp:Label ID="rec2_addshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Email</td><td width="50%" align=left>
      <asp:Label ID="rec2_emailshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Online Recommendation</td><td width="50%" align=left>
      <asp:Label ID="online2show" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right><strong>Provider 3 Name</strong></td><td width="50%" align=left><strong><asp:Label ID="rec3_fnameshow" runat="server"></asp:Label>&nbsp;<asp:Label ID="rec3_lnameshow" runat="server"></asp:Label></strong></td></tr><tr>
  <td width="50%" align=right>Organization</td><td width="50%" align=left>
      <asp:Label ID="rec3_orgshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Phone</td><td width="50%" align=left>
      <asp:Label ID="rec3_phoneshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Mailing Address</td><td width="50%" align=left>
      <asp:Label ID="rec3_addshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Email</td><td width="50%" align=left>
      <asp:Label ID="rec3_emailshow" runat="server"></asp:Label></td></tr><tr>
  <td width="50%" align=right>Online Recommendation</td><td width="50%" align=left>
      <asp:Label ID="online3show" runat="server"></asp:Label></td></tr><tr>
  <td colspan="2" align="center">
      <asp:Button ID="Modify" runat="server" Text="Back &amp; Modify" 
          onclick="Modify_Click" CommandArgument="View1" CommandName="SwitchViewByID" />&nbsp;&nbsp;&nbsp;
      <asp:Button 
                      ID="Submit" runat="server" Text="Submit" onclick="Submit_Click" 
                      CommandArgument="View6" CommandName="SwitchViewByID" /></td></tr>
    </table>
    </form>
          </asp:View>
      <br />
      <asp:View ID="View6" runat="server">
      <h1>Application successful submitted!</h1><form id="form6" runat="server">
      <p>Please press the &quot;Return&quot; button below to return to the useraccount page.</p><br /><br /><asp:Button 
             ID="return" runat="server" onclick="return_Click" Text="Return" /><br /></form>
       </asp:View>
          </asp:MultiView>
          <!-- end #mainContent --></div>
          <div id="footer">
<p align="center"><a href="myaccount.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | <a href="userapplication.aspx">Apply</a> | <a href="myaccount.aspx">Status</a> | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p><!-- end #footer --></div><!-- end #container --></div></body></html>