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
  <form action="">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2" class="style2"><u>Campus and Program</u></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Campus</p></td>
        <td width="50%" height="40"><label>
          <select name="campus" id="campus">
          </select>
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Graduate School</p></td>
        <td width="50%" height="40"><label>
          <select name="gradschool" id="gradschool">
          </select>
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Program</p></td>
        <td width="50%" height="40"><label>
          <select id="program" name="program">
                <option></option>
            </select></label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Other Enrollment Information</u></strong></td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Enrollment Objective </p></td>
        <td height="40"><label>
          <select id="enrollobjective" name="enrollobjective">
                <option></option>
            </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Entry Term<br />
        </p></td>
        <td height="40">
            <label>
          <select id="entryterm" name="entryterm">
                <option></option>
            </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Entry Year<br />
        </div></td>
        <td height="40"><label>
          <select id="entryyear" name="entryyear">
                <option></option>
            </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Full Time/Half Time<br />
        </div></td>
        <td height="40"><label>
          <select name="fullhalf" id="fullhalf">
          </select>
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Area of Interest</p></td>
        <td width="50%" height="40"><label>
          <select id="area0" name="area0">
                <option></option>
            </select></label></td>
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
  </form></p>
    <!-- end #mainContent -->
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>