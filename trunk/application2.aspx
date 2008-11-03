<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apply For Program - Step 2</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">
<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
    <table width="100%"><tr><td align="center"><img src="images/application2-4.png" /></td></tr></table>
  <h1>Employment Experience</h1>
  <form action="">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Most Recent Employment Experience</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name</p></td>
        <td width="50%" height="40"></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td>
        <td width="50%" height="40"></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td>
        <td width="50%" height="40">From
            <label>
          <select id="program0" name="program0" onclick="return program_onclick()">
                <option></option>
            </select><select id="program1" name="program1" onclick="return program_onclick()">
                <option></option>
            </select> To <select id="program2" name="program2" onclick="return program_onclick()">
                <option></option>
            </select><select id="program3" name="program3" onclick="return program_onclick()">
                <option></option>
            </select></label></td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum)</td>
        <td><label>
            <textarea name="otherschool" id="Textarea2"></textarea></label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Employment Experience</u> (Skip this section if not applicable.)</strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name</p></td>
        <td width="50%" height="40"></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td>
        <td width="50%" height="40"></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td>
        <td width="50%" height="40"><label>
            From
          <select id="program5" name="program8" onclick="return program_onclick()">
                <option></option>
            </select><select id="program6" name="program9" onclick="return program_onclick()">
                <option></option>
            </select>
            To&nbsp;<select id="program7" name="program10" onclick="return program_onclick()">
                <option></option>
            </select><select id="program8" name="program11" onclick="return program_onclick()">
                <option></option>
            </select></label></td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum)</td>
        <td><label>
            <textarea name="otherschool" id="Textarea1"></textarea></label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Employment Experience</u> (Skip this section if not applicable.)</strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name</p></td>
        <td width="50%" height="40"></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td>
        <td width="50%" height="40"></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country</p></td>
        <td width="50%" height="40">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td>
        <td width="50%" height="40">
            <label>
            From
          <select id="program10" name="program16" onclick="return program_onclick()">
                <option></option>
            </select><select id="program11" name="program17" onclick="return program_onclick()">
                <option></option>
            </select> To <select id="program12" name="program18" onclick="return program_onclick()">
                <option></option>
            </select><select id="program13" name="program19" onclick="return program_onclick()">
                <option></option>
            </select></label></td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum) </td>
        <td><label>
            <textarea name="otherschool" id="otherschool"></textarea></label></td>
      </tr>
        &nbsp;</td>
        </tr>
<tr>
        <td height="40" colspan="2"><div align="center">
            <a href="Application1.aspx">Previous Page</a>&nbsp;&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="Application3.aspx">Next Page</a></div></td>
        </tr>
    </table>
  </form>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>