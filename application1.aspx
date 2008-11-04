<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apply For Program - Step 1</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <table width="100%"><tr><td align="center"><img src="images/application1-4.png" /></td></tr></table>
  <h1 class="style1">Program Information</h1>
      <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2" class="style2"><u>Campus and Program</u></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Campus</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="campus" runat="server">
                <asp:ListItem Selected="True" Value="Select One ...">Select One ...</asp:ListItem>
                <asp:ListItem Value="New Brunswick">New Brunswick</asp:ListItem>
                <asp:ListItem>Newark</asp:ListItem>
                <asp:ListItem>Camdon</asp:ListItem>
            </asp:DropDownList>
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
          </td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Entry Term<br />
        </p></td>
        <td height="40">
            <asp:DropDownList ID="entryterm" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>Spring</asp:ListItem>
                <asp:ListItem>Summer</asp:ListItem>
                <asp:ListItem>Autumn</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Entry Year<br />
        </div></td>
        <td height="40">
            <asp:DropDownList ID="entryyearist1" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
            </asp:DropDownList>
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
        <td height="40"><label>
            <textarea name="felonyexplain0" id="felonyexplain0"></textarea></label></td>
      </tr>
      <tr>
        <td height="40">Please list other graduate schools to which you are applying 
            separate each school name with a semicolon(;).<br />
            (300 characters maximum)</td>
        <td><label>
            <textarea name="otherschool" id="otherschool"></textarea></label></td>
      </tr>
        &nbsp;</td>
        </tr>
      <tr>
        <td height="40" colspan="2"><div align="center">
            &nbsp;Save&nbsp;&nbsp;&nbsp;&nbsp; <a href="Application2.aspx">Next Page</a></div></td>
        </tr>
    </table>
      </form>
      </p>
    <!-- end #mainContent -->
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>